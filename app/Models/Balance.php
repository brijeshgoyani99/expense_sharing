<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Laravel\Passport\HasApiTokens;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Model;

class Balance extends Model
{
    use HasApiTokens, HasFactory, Notifiable;

    protected $table = 'user_balance';

    protected $primaryKey = 'id';
    
    protected $fillable = [
        'user_id',
        'total_balance',
    ];

    public $timestamps = true;
    
}