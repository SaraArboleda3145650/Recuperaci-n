Algoritmo Gestion_De_Ventas_Frutas
	Definir codigo, kilos, fruta_mas_vendida Como Entero
	Definir precio, ingreso, ingreso_total Como Real
	Definir manzana, banana, naranja, kiwi Como Entero
	Definir mayor_kilos Como Entero
	manzana <- 0
	banana <- 0
	naranja <- 0
	kiwi <- 0
	ingreso_total <- 0
	Escribir 'GESTI�N DE VENTAS DE FRUTAS'
	Repetir
		Escribir 'Ingrese el c�digo de fruta (1 = Manzana, 2 = Banana, 3 = Naranja, 4 = Kiwi, 0 = Fin) '
		Leer codigo
		Si codigo<>0 Entonces
			Escribir 'Ingrese cantidad de kilos vendidos: '
			Leer kilos
			Escribir 'Ingrese precio por kilo: '
			Leer precio
			ingreso <- kilos*precio
			ingreso_total <- ingreso_total+ingreso
			Seg�n codigo Hacer
				1:
					manzana <- manzana+kilos
				2:
					banana <- banana+kilos
				3:
					naranja <- naranja+kilos
				4:
					kiwi <- kiwi+kilos
				De Otro Modo:
					Escribir 'C�digo inv�lido'
			FinSeg�n
		FinSi
	Hasta Que codigo=0
	Escribir 'Kilos vendidos Manzana: ', manzana, ', Banana: ', banana, ', Naranja: ', naranja, ', Kiwi: ', kiwi
	Escribir 'Ingreso total: $', ingreso_total
	mayor_kilos <- manzana
	fruta_mas_vendida <- 1
	Si banana>mayor_kilos Entonces
		mayor_kilos <- banana
		fruta_mas_vendida <- 2
	FinSi
	Si naranja>mayor_kilos Entonces
		mayor_kilos <- naranja
		fruta_mas_vendida <- 3
	FinSi
	Si kiwi>mayor_kilos Entonces
		mayor_kilos <- kiwi
		fruta_mas_vendida <- 4
	FinSi
	Seg�n fruta_mas_vendida Hacer
		1:
			Escribir 'Fruta m�s vendida: Manzana'
		2:
			Escribir 'Fruta m�s vendida: Banana'
		3:
			Escribir 'Fruta m�s vendida: Naranja'
		4:
			Escribir 'Fruta m�s vendida: Kiwi'
	FinSeg�n
	Si ingreso_total>200 Entonces
		Escribir 'Buen d�a de ventas'
	SiNo
		Escribir 'D�a regular'
	FinSi
FinAlgoritmo
