@extends('layout')

@section('content')
this content is from the main application
@include('narasimha.simpleAdmin.adminUsers',array("users" => ["name","asdf"]))
@stop

