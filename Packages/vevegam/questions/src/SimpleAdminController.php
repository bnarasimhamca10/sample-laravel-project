<?php namespace Vevegam\Questions;
use App\Http\Controllers\Controller;
use App\User;
use Carbon\Carbon;

class SimpleAdminController extends Controller {

  public function __construct() {
  }

  /**
  * Display a listing of the resource.
  *
  * @return Response
  */
  public function index($timezone)
    {
        echo Carbon::now($timezone)->toDateTimeString();
    }
}