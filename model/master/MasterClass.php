<?php
	/**
	 * 
	 */

	include('lib/config/Conexion.php');

	class MasterClass extends Conexion
	{


		
		function __construct()
		{
			# code...
		}



		public function getUsersSql($sql){


			$con	 = Conexion::Conectarse();

			$result =$con->query($sql);

			return $result;

						
		}







	}




?>