<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Producto extends Model
{
    //
    protected $table = 'tipo_productos';
    protected $primaryKey = 'id_producto';
    public $timestamps = false;
}
