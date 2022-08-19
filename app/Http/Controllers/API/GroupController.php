<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Group;
use Illuminate\Support\Facades\Auth;
use App\Repositories\GroupRepository;

class GroupController extends Controller
{
    public $groupRepository;

    public function __construct(GroupRepository $groupRepository)
    {
        $this->groupRepository = $groupRepository;
    }
    
    /** 
     * get group data api 
     * 
     * @return \Illuminate\Http\Response 
     */
    public function get_group_data(){ 
        return $this->groupRepository->get_group_data();
    } 
}