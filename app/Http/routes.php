<?php
use App\Task;
use App\User;
use Illuminate\Http\Request;
/*
|--------------------------------------------------------------------------
| Routes File
|--------------------------------------------------------------------------
|
| Here is where you will register all of the routes in an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return view('welcome');
})->middleware('guest');

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| This route group applies the "web" middleware group to every route
| it contains. The "web" middleware group is defined in your HTTP
| kernel and includes session state, CSRF protection, and more.
|
*/

Route::group(['middleware' => ['web']], function () {
// Authentication Routes...
Route::auth();
// Task Routes
Route::get('/home', 'TaskController@index');
Route::get('/tasks', 'TaskController@index');
Route::post('/task', 'TaskController@store');
Route::delete('/task/{task}', 'TaskController@destroy');
// Authentication Routes...
Route::get('auth/login', 'Auth\AuthController@getLogin');
Route::post('auth/login', 'Auth\AuthController@postLogin');
Route::get('auth/logout', 'Auth\AuthController@getLogout');
// Registration Routes... 
Route::get('auth/register', 'Auth\AuthController@getRegister');
Route::post('auth/register', 'Auth\AuthController@postRegister');
/**    Show Task Dashboard
Route::model('tasks', 'Task');
    Route::get('/', function () {
	    $tasks = Task::orderBy('created_at', 'asc')->get();
$users = User::all();
	    return view('tasks', [
        	'tasks' => $tasks,
        	'users' => $users
    		]);
    });
*/

    /**
     * Add New Task
    Route::post('/task', function (Request $request) {
	$validator = Validator::make($request->all(), [
        'name' => 'required|max:255',
    ]);

    if ($validator->fails()) {
        return redirect('/')
            ->withInput()
            ->withErrors($validator);
    }

	$task = new Task;
    $task->name = $request->name;
    $task->save();

    return redirect('/');
    });
*/

    /**
     * Delete Task
	Route::delete('/task/{task}', function (Task $task) {
    $task->delete();

    return redirect('/');
	});
*/

/*
Route::get('/tasks', 'TaskController@index');
Route::post('/task', 'TaskController@store');
Route::delete('/task/{task}', 'TaskController@destroy');
*/
});
Route::get('users', function()
{
    return View::make('users');
});
