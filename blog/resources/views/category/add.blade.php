@extends('layouts.admin')
 
@section('title', 'Page Title')
 
@section('sidebar')
    @@parent
 
    <p>This is appended to the master sidebar.</p>
@endsection
 
@section('content')


<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
  @include('partials.content-header', ['name'=>'category','key'=>'Add'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
        <form>
  <div class="form-group">
    <label for="">Tên danh mục</label>
    <input type="email" placeholder="Nhập tên danh mục">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
      <label for="">Chọn danh mục cha</label>
  <select class="form-control" >
      <option value=0>Chọn danh mục cha</option>
    {{!!$htmlOption!!}}
    </select>
    </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
         
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
    <p>This is my body content.</p>
@endsection

