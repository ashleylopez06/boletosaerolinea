Algoritmo MenuPrincipal
		Definir opcion como entero
		
		Repetir;
			Escribir "----- MEN� PRINCIPAL -----"
			Escribir "1. Presentaci�n"
			Escribir "2. Adquirir Boleto"
			Escribir "3. Cancelar Boleto"
			Escribir "4. Ver Disponibles"
			Escribir "5. Salir"
			Escribir "----------------------------"
			Escribir "Ingrese el n�mero de opci�n deseada: "
			Leer opcion
			
			Segun opcion Hacer
				Caso 1:
					Presentacion()
				Caso 2:
					AdquirirBoleto() 
				Caso 3:
					CancelarBoleto()
				Caso 4:
					VerDisponibles()
				Caso 5:
					Escribir "Saliendo del programa..."
				De Otro Modo:
					Escribir "Opci�n inv�lida. Por favor, ingrese una opci�n v�lida."
                Fin Segun
			
	             Mientras opcion <> 5
FinAlgoritmo



Algoritmo Presentacion
    Escribir "�Bienvenido al sistema de venta de boletos!"
FinAlgoritmo

Algoritmo AdquirirBoleto
    Escribir "L�gica para adquirir boleto"
FinAlgoritmo

Algoritmo CancelarBoleto
    Escribir "L�gica para cancelar boleto"
FinAlgoritmo

Algoritmo VerDisponibles
    Escribir "L�gica para mostrar boletos disponibles"
FinAlgoritmo

              MenuPrincipal()  // Llamada al men� principal


              FinAlgoritmo
