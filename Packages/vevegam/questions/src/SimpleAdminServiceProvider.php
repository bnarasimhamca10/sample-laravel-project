<?php

namespace Vevegam\Questions;

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
        //
        $this->loadViewsFrom(__DIR__.'/views', 'Questions');
        $this->publishes([
            __DIR__.'/views' => base_path('resources/views/vevegam/questions'),
        ]);
    }

    /**
     * Register the application services.
     *
     * @return void
     */
    public function register()
    {
        //
        include __DIR__.'/routes.php';
        $this->app->make('Vevegam\Questions\SimpleAdminController');

    }
}
