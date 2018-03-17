<?php

namespace App\Service\Filter;

use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Builder;

class MessageFilter extends QueryFilters
{
    public function q($q = null)
    {
        return $this->builder->where('subject', 'like',  "%{$q}%")
                ->orWhere('body', 'like', "%{$q}%");
    }

    public function user($user = null)
    {
        return $this->builder->whereHas('user', function($query) use($user) {
                $query->whereName($user);
            });
    }

    public function subject($subject = null)
    {
        return $this->builder->where('subject', $subject);
    }
    public function body($body = null)
    {
        return $this->builder->where('body', $body);
    }

    public function asc($asc = 'asc')
    {
        return $this->builder->orderBy('created_at', $asc);
    }

    public function limit($take = null)
    {
        return $this->builder->limit($take);
    }
    public function offset($offset = null)
    {
        return $this->builder->offset($offset);
    }
}