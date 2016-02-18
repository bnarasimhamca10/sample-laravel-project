<?php

namespace App\Providers;

use App\Providers\ThingWasDone;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class SendMailInSomeParticularContext
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  ThingWasDone  $event
     * @return void
     */
    public function handle(ThingWasDone $event)
    {
        //
    }
}
