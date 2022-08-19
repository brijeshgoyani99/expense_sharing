<?php

namespace App\Repositories;

use JasonGuru\LaravelMakeRepository\Repository\BaseRepository;
use App\Models\Group;
use Illuminate\Support\Facades\Auth;
//use Your Model

/**
 * Class GroupRepository.
 */
class GroupRepository 
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
    public function get_group_data(){
        // get group data 
        try {
            $user_id = Auth::user()->id;
            if(isset($user_id)){
                $data = Group::all();
                $success['data'] =  $data;
                $success['message'] =  "Group Data Successfully Retrieved"; 
                return response()->json(['success' => $success], $this->successStatus); 
            }else{ 
                return response()->json(['error'=>'Server Error'], 401); 
            } 
        } catch (\Throwable $th) {
            return response()->json(['error'=>'Server Error'], 401); 
        }
        
    }
}