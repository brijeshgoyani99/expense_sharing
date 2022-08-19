<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Group;
use App\Models\Expense;
use App\Models\Transaction;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use App\Repositories\BalanceRepository;


class BalanceController extends Controller
{
    
    public $balanceRepository;

    public function __construct(BalanceRepository $balanceRepository)
    {
        $this->balanceRepository = $balanceRepository;
    }
    
    /** 
     * Store Expense data api 
     * 
     * @return \Illuminate\Http\Response 
     */
    public function get_balance(Request $request){
        return $this->balanceRepository->get_balance($request);
    }
}