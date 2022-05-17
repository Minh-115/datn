<?php

namespace App\Http\Controllers;

 
use App\Slider;
use Illuminate\Http\Request;
use App\Category;
use App\Product;

class HomeController extends Controller
{
  public function index(){
   $sliders = Slider::latest()->get();
   $categorys = Category::where('parent_id',0)->get();
   $products = Product::latest()->take(6)->get();
     return view('home.home',compact('sliders', 'categorys','products'));
  }
 
public function detail($id){
  $categorys = Category::where('parent_id',0)->get();
  $categories = Category::find($id);
  $product = Product::find($id);
   return view('product.detail',compact('categorys','product','categories'));
}

public function test( ){
    return view('test');
}
}
