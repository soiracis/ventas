<?php namespace App\Http\Requests;

use App\Http\Requests\Request;

class EmpresaRequest extends Request {

	/**
	 * Determine if the user is authorized to make this request.
	 *
	 * @return bool
	 */
	public function authorize()
	{
		return true;
	}

	/**
	 * Get the validation rules that apply to the request.
	 *
	 * @return array
	 */
	public function rules()
	{
		return [
			
			"id_empresa"=>"required|unique:empresa,id_empresa,".$this->input('id_empresa').",id_empresa|min:6",
			"nombre"=>"required",
			"localidad"=>"required"
		];
	}

/*public function messages()
	{
		return[
			'id_empresa.required' => 'El campo ID es requerido!',
	        'id_empresa.max' => 'El campo ID no puede tener mas de 6 carácteres',
			'id_empresa.min' => 'El campo ID no puede tener menos de 6 carácteres',
			'nombre.required' => 'El campo Nombre Completo es requerido!',
	        
		];
	}
*/
}