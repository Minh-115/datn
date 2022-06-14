<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order_detail extends Model
{
    use HasFactory;
    protected $guarded = [];
    protected $table = 'order_details';
    protected $primaryKey = 'order_detail_id';
}
