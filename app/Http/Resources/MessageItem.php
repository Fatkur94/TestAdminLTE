<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;
use Illuminate\Http\Resources\Json\ResourceCollection;

class MessageItem extends Resource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'link' => url("/api/messages/{$this->id}"),
            'subject' => $this->subject,
            'body' => $this->body,
            'user' => new \App\Http\Resources\UserItem($this->user)
        ];
    }
}

class MessageCollection extends ResourceCollection
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'subject' => $this->subject,
            'body' => $this->body,
            'user' => new \App\Http\Resources\UserItem($this->user)
        ];
    }
}
