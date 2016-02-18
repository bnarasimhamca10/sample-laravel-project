<?php namespace Narasimha\SimpleAdmin\Controllers;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Http\Response;
use View;
class SimpleAdminController extends Controller {

  public function __construct() {
//    $this->middleware('auth');
  }

  /**
  * Display a listing of the resource.
  *
  * @return Response
  */
  public function index()
  {
    $users = User::all();
        return View::make('simpleAdmin::admin')->with('users', $users);
        $contents = View::make('simpleAdmin::admin')->with('users', $users);
        $response = Response::make($contents, $statusCode);
        return $response;
  }
}
