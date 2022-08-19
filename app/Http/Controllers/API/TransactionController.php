<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Balance;
use App\Models\Expense;
use App\Models\Group;
use App\Models\Transaction;
use App\Models\User;
use App\Repositories\TransactionRepository;


class TransactionController extends Controller
{
    public $transactionRepository;

    public function __construct(TransactionRepository $transactionRepository)
    {
        $this->transactionRepository = $transactionRepository;
    }
    
    /** 
     * Store Expense data api 
     * 
     * @return \Illuminate\Http\Response 
     */
    public function store(Request $request){
        return $this->transactionRepository->store($request);
    }
}