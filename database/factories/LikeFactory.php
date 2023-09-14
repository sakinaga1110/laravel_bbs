<?php

namespace Database\Factories;
// database/factories/LikeFactory.php

use App\Models\Like;
use Illuminate\Database\Eloquent\Factories\Factory;

class LikeFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Like::class;

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
        ];
    }
}

