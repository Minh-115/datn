@extends('layouts.master')
 
@section('title', 'Page Title')
 
@section('sidebar')
    @@parent
 
    <p>This is appended to the master sidebar.</p>
@endsection
@php
$base_url =  'http://localhost:8081';
@endphp
@section('content')


<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
   
    <!-- /.content-header -->

    <!-- Main content -->
    <section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="#">Home</a></li>
				  <li class="active">Shopping Cart</li>
				</ol>
			</div>
			<div class="table-responsive cart_info">
				<?php
use Gloudemans\Shoppingcart\Facades\Cart;
				$content=Cart::content();
				echo '<pre>';
			
				echo '</pre>';

				?>
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image">Sản Phẩm</td>
							<td class="description">Mô tả</td>
							<td class="quantity">Quantity</td>
							<td class="price">Giá</td>
						
							<td></td>
						</tr>
					</thead>
					<tbody>
            @foreach($content as $c1)
						<tr>
							<td class="cart_product">
								<a href=""><img src="{{$base_url.$c1->options->image}} " style="height:100px;width:150px;" alt="">{{$c1->name}}</a>
							</td>
							<td class="cart_description">
								<h4><a href="">{{$c1->name}}</h4>
								<p>{{$c1->id}}</p>
							</td>
							<td class="cart_quantity">
								<div class="cart_quantity_button">				
									<input name="qty" type="number" value="{{$c1->qty}}" />									
								</div>
							</td>
							<td class="cart_price">
								<p>{{number_format($c1->subtotal)}}</p>
							</td>
							
							<td class="cart_delete">
								<a class="cart_quantity_delete" href="{{URL::to('/delete/'.$c1->rowId)}}"><i class="fa fa-times"></i></a>
							</td>
						</tr>
            @endforeach
					
					</tbody>
				</table>
			</div>
		</div>
	</section> <!--/#cart_items-->

	<section id="do_action">
		<div class="container">
			<div class="heading">
				<h3>What would you like to do next?</h3>
				<p>Choose if you have a discount code or reward points you want to use or would like to estimate your delivery cost.</p>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<div class="chose_area">
						<ul class="user_option">
							<li>
								<input type="checkbox">
								<label>Use Coupon Code</label>
							</li>
							<li>
								<input type="checkbox">
								<label>Use Gift Voucher</label>
							</li>
							<li>
								<input type="checkbox">
								<label>Estimate Shipping & Taxes</label>
							</li>
						</ul>
						<ul class="user_info">
							<li class="single_field">
								<label>Country:</label>
								<select>
									<option>United States</option>
									<option>Bangladesh</option>
									<option>UK</option>
									<option>India</option>
									<option>Pakistan</option>
									<option>Ucrane</option>
									<option>Canada</option>
									<option>Dubai</option>
								</select>
								
							</li>
							<li class="single_field">
								<label>Region / State:</label>
								<select>
									<option>Select</option>
									<option>Dhaka</option>
									<option>London</option>
									<option>Dillih</option>
									<option>Lahore</option>
									<option>Alaska</option>
									<option>Canada</option>
									<option>Dubai</option>
								</select>
							
							</li>
							<li class="single_field zip-field">
								<label>Zip Code:</label>
								<input type="text">
							</li>
						</ul>
						<a class="btn btn-default update" href="">Get Quotes</a>
						<a class="btn btn-default check_out" href="">Continue</a>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="total_area">
						<ul>
							<li>Cart Sub Total <span>$59</span></li>
							<li>Eco Tax <span>$2</span></li>
							<li>Shipping Cost <span>Free</span></li>
							<li>Total <span>$61</span></li>
						</ul>
							<a class="btn btn-default update" href="">Update</a>
							<a class="btn btn-default check_out" href="">Check Out</a>
					</div>
				</div>
			</div>
		</div>
	</section><!--/#do_action-->
    
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
   
@endsection

