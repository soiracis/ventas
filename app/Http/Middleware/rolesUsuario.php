<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class rolesUsuario
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string|null  $guard
     * @return mixed
     */
    public function handle($request, Closure $next, $modulo = false)
    {
      if(!Auth::user()->estaAutorizado($modulo)){
        return redirect('/');
      }
      return $next($request);
    }
}
