<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Empresa extends Model
{
    //
    protected $table = 'empresa';
    protected $primaryKey = 'id_empresa';
    protected $fillable = ['nombre','direccion','localidad','CP','telefono','RFC','logo'];
    public $timestamps = false;

}

