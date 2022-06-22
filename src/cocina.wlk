//  []
//  {}
// ({})

import comidas.*
import comensales.*

class Cocina {
	const comidas = []

	method agregarComida(unaComida) {comidas.addAll(unaComida)}
	method sacarComida(unaComida) {comidas.remove(unaComida)}
	method comidasDeLaParrila(parrillada) = parrillada.cortesDeLaParrila()
		
	method buenaOfertaVegetariana() = 
	(self.cantDeCOmidasVegetarianas() - self.cantidadDeComidasCarnivoras()) == 2
	
	method cantDeCOmidasVegetarianas() = (self.comidasVegetarianas()).size()
	method comidasVegetarianas() = comidas.filter({c => c.aptoVegetariano()})
	
	method cantidadDeComidasCarnivoras() = (self.comidasCarnivoras()).size()
	method comidasCarnivoras() = comidas.filter({c => not c.aptoVegetariano()})
	
	method platoFuerteCarnivoro() = (self.comidasCarnivoras()).max({c => c.valoracion()})
	method comidasQueLeGustan(unComensal) = unComensal.comidasQueComio()
	
	method comidaAlAzar() = comidas.anyOne()
	
/*   method elegirPlatoParaComensal(unComensal) {
		if(not unComensal.leAgradaComida(self.comidaAlAzar())){
		self.error("Al comenzal no le gusta la comida")
		} 
		else {
		 return unComensal.comer(self.comidaAlAzar())} 
		} 
*/  

}