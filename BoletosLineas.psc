Algoritmo BoletosLineas
	Definir usuario,contrasena Como Caracter
	Definir asientos Como Entero
	Definir intentos, opcion Como Entero
	asientos <- 10
	intentos <- 0
	
	Repetir
		LimpiarPantalla
		Escribir("Ingrese el usuario:")
		Leer usuario
		LimpiarPantalla
		Escribir("Ingrese la contrasena:")
		Leer contrasena
		Si contrasena = "26112006" y usuario = "ashley" Entonces
			Repetir
				LimpiarPantalla
				Escribir("Bienvenido al sistema")
				Escribir("1) Presentacion")
				Escribir("2) Adquirir boletos")
				Escribir("3) Cancelar boletos")
				Escribir("4) Ver disponibles")
				Escribir("5) Salir")
				Escribir("Ingrese una opcion:")
				Leer opcion
				
				Segun opcion Hacer
					1:
						LimpiarPantalla
						Escribir("Ha seleccionado la opcion Presentacion")
					2:
						LimpiarPantalla
						Escribir("Ha seleccionado la opcion Adquirir boletos")
					3:
						LimpiarPantalla
						Escribir("Ha seleccionado la opcion Cancelar boletos")
					4:
						LimpiarPantalla
						Escribir("Ha seleccionado la opcion Ver disponibles")
					5:
						LimpiarPantalla
						Escribir("Saliendo del programa...")
				Fin Segun
				
			Hasta Que opcion = 5
			
		Sino
			intentos <- intentos + 1
			LimpiarPantalla
			Escribir "Contrasena incorrecta. Intentos restantes:" 
			Escribir (3 - intentos)
			
		Fin Si
		
		Si intentos = 3 Entonces
			LimpiarPantalla
			Escribir("Ha alcanzado el numero maximo de intentos. Saliendo del programa...")
		Fin Si
	Hasta Que intentos = 3 o opcion = 5

FinAlgoritmo
