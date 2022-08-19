<?php

namespace App\Repositories;

use JasonGuru\LaravelMakeRepository\Repository\BaseRepository;
use Illuminate\Http\Request;
use App\Models\Group;
use App\Models\Expense;
use App\Models\Transaction;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
//use Your Model

/**
 * Class BalanceRepository.
 */
class BalanceRepository 
{
    public $successStatus = 200;

    /**
     * @return string
     *  Return the model
     */
    public function model()
    {
        //return YourModel::class;
    }
    public function get_balance($request){
        try {
            // get group data using group id 
            $group = Group::where('id',$request->group_id)->first();
            $group_members = json_decode($group->user_id,true);
            
            // get login user Data 
            $login_user = Auth::user()->id;
            
            // get total expense in logn user 
            $data['total_expense'] = Expense::where('payed_user',$login_user)->get();
            
            // get user wise total creadit and debit balance 
            foreach ($group_members as $key => $value) {
                if($login_user != $value){
                    
                    // get user Data 
                    $user = User::where('id',$value)->first();
                
                    // get Total Creadit Blance 
                    $data['total_credit_balance'][$user->name] = Transaction::where([['group_id',$request->group_id],['given_user_id',$login_user],['user_id',$value]])->get();
                    
                    // get Total Debit Balance 
                    $data['total_debit_balance'][$user->name] = Transaction::where([['group_id',$request->group_id],['user_id',$login_user],['given_user_id',$value]])->get();
                } 
            }
            $success['success'] = 'true';
            $success['data'] = $data;
            $success['Message'] = 'Expense Data Get Successfully';
            return response()->json(['success' => $success], $this->successStatus);
        } catch (\Throwable $th) {
            return response()->json(['error'=>'Server Error'], 401);
        }
    }
}