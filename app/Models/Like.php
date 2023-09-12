<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Like extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_id', // ここに 'user_id' を追加
        'post_id', // もし 'post_id' も一括代入可能な属性であれば、追加してください
    ];
    public function post()
    {
        return $this->belongsTo(Post::class);
    }
}
