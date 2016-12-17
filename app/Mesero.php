<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Mesero extends Model
{
    //
    protected $table = 'tbl_meseros';
    protected $primaryKey = 'id_mesero';
    protected $fillable = ['tx_nombre','tx_apellidoPaterno','tx_apellidoMaterno','direccion','tx_correo','telefono','tx_username','dt_registro','pw','imagen'];
    public $timestamps = false;
}
