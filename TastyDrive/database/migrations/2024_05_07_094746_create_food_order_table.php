<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFoodOrderTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
{
    Schema::create('food_order', function (Blueprint $table) {
        $table->unsignedBigInteger('order_id');
        $table->unsignedBigInteger('food_id');
        $table->integer('quantity');

        // Define composite primary key
        $table->primary(['order_id', 'food_id']);

        // Define foreign key constraints
        $table->foreign('order_id')->references('id')->on('order')->onDelete('cascade');
        $table->foreign('food_id')->references('id')->on('food')->onDelete('cascade');

        $table->timestamps();
    });
}
    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('food_order');
    }
}
