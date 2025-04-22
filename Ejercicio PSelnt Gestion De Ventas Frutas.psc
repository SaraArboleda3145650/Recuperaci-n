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
	Escribir 'GESTIÓN DE VENTAS DE FRUTAS'
	Repetir
		Escribir 'Ingrese el código de fruta (1 = Manzana, 2 = Banana, 3 = Naranja, 4 = Kiwi, 0 = Fin) '
		Leer codigo
		Si codigo<>0 Entonces
			Escribir 'Ingrese cantidad de kilos vendidos: '
			Leer kilos
			Escribir 'Ingrese precio por kilo: '
			Leer precio
			ingreso <- kilos*precio
			ingreso_total <- ingreso_total+ingreso
			Según codigo Hacer
				1:
					manzana <- manzana+kilos
				2:
					banana <- banana+kilos
				3:
					naranja <- naranja+kilos
				4:
					kiwi <- kiwi+kilos
				De Otro Modo:
					Escribir 'Código inválido'
			FinSegún
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
	Según fruta_mas_vendida Hacer
		1:
			Escribir 'Fruta más vendida: Manzana'
		2:
			Escribir 'Fruta más vendida: Banana'
		3:
			Escribir 'Fruta más vendida: Naranja'
		4:
			Escribir 'Fruta más vendida: Kiwi'
	FinSegún
	Si ingreso_total>200 Entonces
		Escribir 'Buen día de ventas'
	SiNo
		Escribir 'Día regular'
	FinSi
FinAlgoritmo
