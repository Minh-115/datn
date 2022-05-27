<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
 public $table = 'comments';
  public $timestamps=false;
  protected $fillable = ['comment','comment_name','comment_date','comment_product_id'];
  protected $primaryKey = 'comment_id';
 

}
