<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Laravel\Passport\HasApiTokens;
use Illuminate\Notifications\Notifiable;

class Transaction extends Model
{
    use HasApiTokens, HasFactory, Notifiable;

    protected $table = 'transaction_table';

    protected $primaryKey = 'id';
    
    protected $fillable = [
        'user_id',
        'expense',
        'message',
        'credit_debit',
    ];

    public $timestamps = true;
    
}