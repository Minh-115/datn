<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;
use PhpParser\Node\Stmt\Foreach_;

use function Ramsey\Uuid\v1;

class CategoryController extends Controller
{
  
   public function create(){
    $data = Category::all();
    $this->categoryRecusive(0);      
}

public function index(){
    return view('category.index');
}
public function categoryRecusive($id){
   $data = Category::all();
   foreach ($data as $value){
      if($value['parent_id']==$id){
         echo '<option>'.$value['name'].'</option>';
      $this->categoryRecusive($value['id']);
      }    
   }
}
}
