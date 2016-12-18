<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Producto extends Model
{
    //
    protected $table = 'tipo_productos';
    protected $primaryKey = 'id_producto';
    protected $fillable = ['nombre_producto', 'codigo_producto', 'precio_producto'];
    public $timestamps = false;
}
