<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request; 
use App\Http\Controllers\Controller; 
use App\Models\User; 
use Illuminate\Support\Facades\Auth; 
use Validator;

class RegisterController extends Controller
{
    public $successStatus = 200;
    /** 
     * login api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
    public function login(){ 
        if(Auth::attempt(['email' => request('email'), 'password' => request('password')])){ 
            $user = Auth::user();
            $success['success'] = 'true'; 
            $success['token'] =  $user->createToken('expense_sharing')-> accessToken; 
            $success['users'] =  $user; 
            return response()->json(['success' => $success], $this->successStatus); 
        } 
        else{ 
            return response()->json(['error'=>'Unauthorised'], 401); 
        } 
    }
    /** 
     * Register api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
    public function register(Request $request) 
    { 
        $validator = Validator::make($request->all(), [ 
            'name' => 'required', 
            'email' => 'required|email', 
            'password' => 'required', 
            'c_password' => 'required|same:password', 
        ]);
        if ($validator->fails()) { 
            return response()->json(['error'=>$validator->errors()], 401);            
        }
        $input = $request->all(); 
        $input['password'] = bcrypt($input['password']); 
        $user = User::create($input);
        $success['success'] = 'true'; 
        $success['token'] =  $user->createToken('expense_sharing')-> accessToken; 
        $success['name'] =  $user;
        return response()->json(['success'=>$success], $this->successStatus); 
    }
    /** 
     * logout api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
    public function logout(){
        $user = Auth::user()->token();
        $user->revoke();
        $user = User::where('id',$user->user_id)->first();
        $success['name'] =  $user;
        $success['message'] = "User logout successfully.";
        return response()->json(['success'=>$success], $this->successStatus); 
    }
}