<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Laravel\Passport\HasApiTokens;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Model;

class Group extends Model
{
    use HasApiTokens, HasFactory, Notifiable;

    protected $table = 'group';

    protected $primaryKey = 'id';
    
    protected $fillable = [
        'group_name',
        'user_id',
    ];

    public $timestamps = true;
}