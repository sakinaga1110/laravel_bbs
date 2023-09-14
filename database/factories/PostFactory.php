<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Post;

class PostFactory extends Factory
{
    protected $model = Post::class;

    public function definition()
    {
        return [
            
            'title' => $this->faker->sentence,
            'main_text' => $this->faker->paragraph,
            'tag' => $this->faker->word,
            'user_id' => function () {
                return \App\Models\User::factory()->create()->id;
            },
        ];
    }
}

