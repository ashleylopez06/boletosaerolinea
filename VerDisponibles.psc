Algoritmo MenuPrincipal
		Definir opcion como entero
		
		Repetir;
			Escribir "----- MENÚ PRINCIPAL -----"
			Escribir "1. Presentación"
			Escribir "2. Adquirir Boleto"
			Escribir "3. Cancelar Boleto"
			Escribir "4. Ver Disponibles"
			Escribir "5. Salir"
			Escribir "----------------------------"
			Escribir "Ingrese el número de opción deseada: "
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
					Escribir "Opción inválida. Por favor, ingrese una opción válida."
                Fin Segun
			
	             Mientras opcion <> 5
FinAlgoritmo



Algoritmo Presentacion
    Escribir "¡Bienvenido al sistema de venta de boletos!"
FinAlgoritmo

Algoritmo AdquirirBoleto
    Escribir "Lógica para adquirir boleto"
FinAlgoritmo

Algoritmo CancelarBoleto
    Escribir "Lógica para cancelar boleto"
FinAlgoritmo

Algoritmo VerDisponibles
    Escribir "Lógica para mostrar boletos disponibles"
FinAlgoritmo

              MenuPrincipal()  // Llamada al menú principal


              FinAlgoritmo
