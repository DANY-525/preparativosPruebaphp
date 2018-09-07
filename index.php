<?php

		class Index {

			private  $modulo = "";
			private  $funcion ="";

			function __construct($m,$f)
			{

				$this->modulo = $m;
				$this->funcion = $f;
			}

			public function EjecutarUrl(){

			$funcionEjecutar = $this->funcion;

			//incluimos el controlador	
			include('Controller/'.$this->modulo.'.php');

			 $test = new  $this->modulo();
			
			 $test->$funcionEjecutar();


			}
		

		}

		$m = $_REQUEST['m'];
		$f = $_REQUEST['f'];	




		//instanciamos la misma clase y la ejecutamos
		$newObj = new Index($m,$f);

		$newObj->EjecutarUrl();


?>