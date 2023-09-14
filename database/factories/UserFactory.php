<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;


/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\User>
 */
class UserFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name' => $this->faker->name, // ランダムな名前を生成
            'email' => $this->faker->unique()->safeEmail, // ユニークなメールアドレスを生成
            'password' => bcrypt('password'), // ハッシュ化されたパスワードを設定
        ];
    }
}
