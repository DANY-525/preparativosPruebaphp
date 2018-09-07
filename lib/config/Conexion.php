<?php

/**
 * 
 */
class Conexion
{
	
	function __construct()
	{
		# code...
	}

	public function Conectarse(){


		$con = mysqli_connect("localhost","root","","soportes");

		return $con;

	}

  
}










?>