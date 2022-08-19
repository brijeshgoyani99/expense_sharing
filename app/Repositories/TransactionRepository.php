<?php

namespace App\Repositories;

use JasonGuru\LaravelMakeRepository\Repository\BaseRepository;
use App\Models\Balance;
use App\Models\Expense;
use App\Models\Group;
use App\Models\Transaction;
use App\Models\User;
use Illuminate\Http\Request;
//use Your Model

/**
 * Class TransactionRepository.
 */
class TransactionRepository
{
    public $successStatus = 200;
    public $errorStatus = 401;
    /**
     * @return string
     *  Return the model
     */
    public function model()
    {
        //return YourModel::class;
    }

    public function store($request)
    {
        try {
            // get all input in one variable 
            $input = $request->all();
            // get user and group data 
            $user = User::where('id', $input['payed_user'])->first();
            $group = Group::where('id', $request->group_id)->first();
            if (!isset($group)) {
                $success['message'] = 'group Not Available';
                return response()->json(['error' => $success], $this->errorStatus);
            }
            $total_group_members = count(json_decode($group->user_id, true));
            $group_members = json_decode($group->user_id, true);
            $expenseType = $request->expense_type;

            // check give percentage sum is 100 or not and amount total sum is equal to total expense
            $user_wise_amount = json_decode($request->user_wise_amount, true);
            $user_wise_percentage= json_decode($request->user_wise_percentage, true);
            $funResponse = $this->checkValidation($user_wise_percentage, $user_wise_amount, $input, $expenseType, $group_members);
         
            if($funResponse === 423){
                $success['message'] = 'The Total Expense And Given Amount Is Not Same';
                return response()->json(['error' => $success], $this->errorStatus);
            }elseif($funResponse === 424){ 
                $success['message'] = 'The Total Percentage Sum Is Not 100...';
                return response()->json(['error' => $success], $this->errorStatus);
            }elseif ($funResponse == true) {
                // store divided amount 
                foreach ($group_members as $value) {
                    if ($value != $input['payed_user']) {
                        if ($expenseType == 1) {
                            // expense divided by EQUAL
                            $amount = $request->total_expense;
                            $divided_amount = $amount / $total_group_members;
                        } elseif ($expenseType == 2) {
                            // expense divided by EXACT
                            $user_wise_amount = json_decode($request->user_wise_amount, true);
                            foreach ($user_wise_amount as $key => $user_id) {
                                $divided_amount = $user_id[$value];
                            }
                        } elseif ($expenseType == 3) {
                            // expense divided by PERCENT
                            $user_wise_percentage = json_decode($request->user_wise_percentage, true);
                            foreach ($user_wise_percentage as $key => $user_id) {
                                $percentage = $user_id[$value];
                            }
                            $divided_amount = ($input['total_expense'] / 100) * $percentage;
                        } else {
                            $success['message'] = 'Please Add Any Expense Type';
                            return response()->json(['error' => $success], $this->errorStatus);
                        }
                        // store transaction history data 
                        $transaction = new Transaction();
                        $transaction->user_id = $value;
                        $transaction->expense = number_format($divided_amount, 2);
                        $transaction->message = $user->name . ' ' . $input['message'];
                        $transaction->credit_debit = 'debit';
                        $transaction->given_user_id = $input['payed_user'];
                        $transaction->group_id     = $input['group_id'];
                        $transaction->save();
                        // store total reference balance 
                        $balance = new Balance();
                        $balance->user_id = $value;
                        $balance->total_balance = number_format($divided_amount, 2);
                        $balance->given_user_id = $input['payed_user'];
                        $balance->group_id = $input['group_id'];
                        $balance->save();
                    }
                }
                // store expense data 
                $expense = Expense::create($input);
                $success['success'] = 'true';
                $success['data'] = $expense;
                $success['Message'] = 'Expense Data Store Successfully';
                return response()->json(['success' => $success], $this->successStatus);
            }else{
                $success['Message'] = 'Something went Wrong!';
                return response()->json(['success' => $success], $this->successStatus);
            }
        } catch (\Throwable $th) {
            return response()->json(['error' => 'Server Error'], 401);
        }
    }

    public function checkValidation($user_wise_percentage, $user_wise_amount, $input, $expenseType, $group_members)
    {
        // check validation for amount divided 
        $percentage = 0;
        $price = 0;
        foreach ($group_members as $value) {
            if ($expenseType == 2) {
                // $user_wise_amount = json_decode($user_wise_amount, true);
                foreach ($user_wise_amount as $key => $user_id) {
                    $price = $user_id[$value] + $price;
                }
            }
            if ($expenseType == 3) {
                // $user_wise_percentage = json_decode($user_wise_percentage, true);
                foreach ($user_wise_percentage as $key => $user_id) {
                    $percentage = $user_id[$value] + $percentage;
                }
            }
        }
       
        if ($expenseType == 2 && $price != $input['total_expense']) {
            return 423; 
        }
        if ($expenseType == 3 && $percentage != 100) {
            return 424;
        }

        return true;
    }
}
