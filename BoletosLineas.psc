Algoritmo BoletosLineas
	Definir usuario,contrasena Como Caracter
	Definir intentos, opcion Como Entero
	Definir sufijo como cadena
	Dimension NombreCompleto[10] 
	Dimension Correo[10] 
	Dimension Telefono[10] 
	Dimension EstaReservado[10] 
	Dimension Asiento[10] 
	intentos <- 0
	
	Escribir("Defina un Usuario")
	Leer UsuarioSistema
	Escribir("Defina una contraseña")
	Leer ContrasenaSistema
	Escribir("Defina un sufijo par los asientos")
	Leer sufijo
	Escribir("Defina el costo de los asientos")
	Leer costoBoletos
	
	Para contador<-1 Hasta 10 Con Paso 1 Hacer
		Asiento[contador]<- sufijo + ConvertirATexto(contador)
		EstaReservado[contador] <- "No"
	Fin Para
	
	Repetir
		LimpiarPantalla
		Escribir("Ingrese el usuario:")
		Leer usuario
		LimpiarPantalla
		Escribir("Ingrese la contrasena:")
		Leer contrasena
		Si contrasena = ContrasenaSistema y usuario = UsuarioSistema Entonces
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
						Escribir("¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦")
						Escribir("¦¦    UNIVERSIDAD NACIONAL DE INGENIERIA                     ¦¦")
						Escribir("¦¦    FACULTAD DE ELECTROTECNIA Y COMPUTACION                ¦¦")
						Escribir("¦¦    COMPRA DE BOLETOS PARA UN VUELO                        ¦¦")
						Escribir("¦¦    INTEGRANTES:                                           ¦¦")
						Escribir("¦¦            ASHLEY ZAMIRA LOPEZ CANO         2023-0764U    ¦¦")
						Escribir("¦¦            CARLOS GABRIEL HERNANDEZ MERCADO 2023-0692U    ¦¦")
						Escribir("¦¦            CHRISTIAM ALFONSO REYES ROMERO   2023-0701U    ¦¦")
						Escribir("¦¦    1M2-CO                                                 ¦¦")
						Escribir("¦¦    ING.NELSON BARRIOS                                     ¦¦")
						Escribir("¦¦    26 DE JUNIO DEL 2023                                   ¦¦")
						Escribir("¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦")
						leer parar
					2:
						LimpiarPantalla
							CostoTotal <- 0
							Escribir("Ingrese su nombre completo")
							Leer TemporalNombreCompleto
							Escribir("Ingrese su telefono")
							Leer TemporalTelefono
							Escribir("Ingrese su Correo")
							Leer temporalCorreo
							
							Escribir("los siguientes asientos estan disponibles:")
							Para contador<-1 Hasta 10 Con Paso 1 Hacer
								si EstaReservado[contador]= "No" Entonces
									Escribir "Opcion " + ConvertirATexto(contador) +", NumeroAsiento: "+ Asiento[contador]
								FinSi
							Fin Para
							
							Escribir("Ingrese la cantidad de asientos a reservar")
							leer CantidadDeAsientosAreservar
							
							Para contador<-1 Hasta CantidadDeAsientosAreservar Con Paso 1 Hacer
								Escribir("Ingrese el numero del asiento")
								leer NumeroAReservar
								si EstaReservado[NumeroAReservar] = "No" Entonces
									Escribir ("Asiento reservado a su persona")
									NombreCompleto[NumeroAReservar] <- TemporalNombreCompleto
									Telefono[NumeroAReservar] <- TemporalTelefono
									Correo[NumeroAReservar] <- temporalCorreo
									CostoTotal <- CostoTotal + costoBoletos
									EstaReservado[NumeroAReservar] <- "Si"
								SiNo
									Escribir("Ese boleto ya esta reservado por otra persona")
								FinSi
							Fin Para
							Escribir("Por favor pagar en Caja  el total de "+ ConvertirATexto(CostoTotal))
						leer parar
					3:
						LimpiarPantalla
						CostoTotal <- 0
						Escribir("Ingrese su nombre completo")
						Leer TemporalNombreCompleto
						
						Escribir("Ingrese la cantidad de boletos a cancelar")
						leer CantidadDeAsientosACancelar
						
						Para contador<-1 Hasta CantidadDeAsientosACancelar Con Paso 1 Hacer
							Escribir("Ingrese el numero del boleto")
							leer NumeroACancelar
							si TemporalNombreCompleto = NombreCompleto[NumeroACancelar] y TemporalNombreCompleto = NombreCompleto[NumeroACancelar] Entonces
								Escribir ("Cancelacion de ticket realizada")
								CostoTotal <- CostoTotal + costoBoletos
								EstaReservado[NumeroAReservar] <- "No"
							SiNo
								Escribir("Ese asiento no se puede cancelar porque usted no es el dueño del boleto")
							FinSi
						Fin Para
						Escribir("Por favor pasar en Caja para retirar el total de "+ ConvertirATexto(CostoTotal))
						leer parar
					4:
						LimpiarPantalla
						Escribir("los siguientes asientos estan disponibles:")
						Para contador<-1 Hasta 10 Con Paso 1 Hacer
							si EstaReservado[contador]= "No" Entonces
								Escribir "Opcion " + ConvertirATexto(contador) +", Boleto: "+ Asiento[contador]
							FinSi
						Fin Para
						leer parar
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
