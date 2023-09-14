<?php

namespace Database\Factories;
// database/factories/CommentFactory.php

use App\Models\Comment;
use Illuminate\Database\Eloquent\Factories\Factory;

class CommentFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Comment::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'user_id' => function () {
                // ダミーユーザーの ID をランダムに選択する例
                return \App\Models\User::inRandomOrder()->first()->id;
            },
            'post_id' => function () {
                // ダミーポストの ID をランダムに選択する例
                return \App\Models\Post::inRandomOrder()->first()->id;
            },
            'comment' => $this->faker->paragraph, // ダミーコメントの本文
        ];
    }
}

