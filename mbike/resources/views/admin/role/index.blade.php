@extends('layouts.admin')
@section('title')
<title>Trang chu</title>
@endsection

@section('css')
<link rel="stylesheet" href="{{asset('admins/slider/index/index.css')}}">
@endsection

@section('content')

<div class="content-wrapper">
@include('partials.content-header',['name' => 'Role','key'=>'List'])
    <div class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">
            <a href="{{route('users.create')}}" class="btn btn-success float-right m-2">Add</a>
          </div>
          <div class="col-md-12">
          <table class="table">
            <thead>
              <tr>             
                <th scope="col">Vị trí  </th>
                <th scope="col">Vai trò</th>
                <th scope="col">Action</th>
              </tr>
            </thead>
            <tbody>
           
           @foreach($roles as $role)
              <tr>
                <td>{{$role->name}}</td>
                <td>{{$role->display_name}}</td>
              
                <td>
                  <a href="{{route('roles.show_permission',['id'=>$role->id])}}" class="btn btn-success">Xem các quyền</a>
                
                </td>
              </tr>
             @endforeach
            </tbody>
          </table>
          </div>
          <div class="col-md-12">
        {{$roles->links('pagination::bootstrap-4')}}
          </div>

          
          
        
        </div>
      </div>
    </div>
  </div>
  @endsection