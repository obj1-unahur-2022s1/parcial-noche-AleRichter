//  []
//  {}
// ({})

import comidas.*

class Comensales {
	var property peso
	const comidasIngeridas = []
	
	method comer(unaComida) {comidasIngeridas.add(unaComida)}
	method leAgradaComida(unaComida)
	method comidasQueComio() = comidasIngeridas 
	method estaSastifecho() = comidasIngeridas.sum({c => c.peso()}) > (peso * 0.01) and self.condicion()
	method condicion()
} 

class Vegetarianos inherits Comensales {
	
	override method leAgradaComida(unaComida) = unaComida.aptoVegetariano() and unaComida.valoracion() > 85
	override method condicion() = comidasIngeridas.all({c => not c.esAbundante()}) 
}

class HambrePopular inherits Comensales {
	
	override method leAgradaComida(unaComida) = unaComida.esAbundante()
	override method condicion() = true
}

class PaladarFino inherits Comensales {
	override method leAgradaComida(unaComida) = unaComida.peso().between(150, 300) && unaComida.valoracion() > 100
	override method condicion() = (comidasIngeridas.size()).even()
}