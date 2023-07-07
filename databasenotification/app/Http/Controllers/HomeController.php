<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Notifications\UserNotification;
use App\Models\User;
class HomeController extends Controller
{
    public function index()
    {

    }
    public function notify()
    {
        $user =  User::first();
        $user->notify(new UserNotification($user));
        // dd('done');

        return view('dashboard', ['user' => $user]);
    }
}
