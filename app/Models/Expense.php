<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Laravel\Passport\HasApiTokens;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Model;

class Expense extends Model
{
     use HasApiTokens, HasFactory, Notifiable;

    protected $table = 'expense_table';

    protected $primaryKey = 'id';
    
    protected $fillable = [
        'total_expense',
        'payed_user',
        'message',
    ];

    public $timestamps = true;
}