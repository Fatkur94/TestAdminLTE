<?php

namespace App\Policies;

use App\User;
use App\Message;
use Illuminate\Auth\Access\HandlesAuthorization;

class MessagePolicy
{
    use HandlesAuthorization;

    public function show(User $user, Message $message)
    {
        // dd($user->id == $message->user_id);
        return $user->id == $message->user_id;
    }
    public function update(User $user, Message $message)
    {
        // dd($user->id == $message->user_id);
        return $user->id == $message->user_id;
    }
}
