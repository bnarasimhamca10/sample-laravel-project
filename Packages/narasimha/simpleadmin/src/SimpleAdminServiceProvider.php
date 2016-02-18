<?php

namespace Narasimha\SimpleAdmin;

use Illuminate\Support\ServiceProvider;

class SimpleAdminServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot()
    {
        $this->loadViewsFrom(__DIR__.'/views', 'simpleAdmin');
	    $this->publishes([
	    __DIR__.'/views' => base_path('resources/views/'),
	]);
        $this->publishes([
        __DIR__.'/assets/js/' => base_path('resources/assets/plugins/js'),
    ]);
        $this->publishes([
        __DIR__.'/assets/css/' => base_path('resources/assets/plugins/css'),
    ]);
        $this->publishes([
        __DIR__.'/config/simpleapp.php' => config_path('simpleapp.php')
    ], 'config');
        
    }

    /**
     * Register the application services.
     *
     * @return void
     */
    public function register()
    {
	include __DIR__.'/Http/routes.php';
    $this->mergeConfigFrom(
        __DIR__.'/config/simpleapp.php', 'simpleAdmin'
    );
    }
}
