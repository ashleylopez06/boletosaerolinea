Algoritmo LoginPseint
	
	Definir usuario, contrasena, inputUsuario, inputContrasena Como Caracter;
	
	usuario <- "ashley"
	contrasena <- "26112006"
	Escribir "Ingrese su nombre de usuario:";
	Leer inputUsuario;
	
	Escribir "Ingrese su contrasena:";
	Leer inputContrasena;
	
	SI usuario = inputUsuario Y contrasena = inputContrasena Entonces
		Escribir "Incio de sesion exitoso. ¡Bienvenido, " +usuario+"! ";
	SiNo
		Escribir "Credenciales invalidas. El inicio de sesion ha fallado.";
		
	FinSi
	
FinAlgoritmo


