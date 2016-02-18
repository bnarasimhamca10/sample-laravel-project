<div class="container"> 
@yield('content')

<h1>This content is from the pluggin</h1> <div class="col-md-8"> <ul class="list-group"> @foreach($users as $user) <li class="list-group-item">{{$user->name}}</li> @endforeach </ul>         
</div> 
</div>
