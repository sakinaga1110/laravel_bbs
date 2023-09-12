<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Users>
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
            
                'name' => $this->faker->name,
                'email' => $this->faker->unique()->safeEmail,
                'password' => bcrypt('password123'), // 例として固定のパスワードを設定
            ];
    }
}
