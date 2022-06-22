//  []
//  {}
// ({})

class Plato {
   var property peso = 0
   
   method valoracion() 
   method aptoVegetariano()
   method esAbundante() = peso > 250
	
}

class Provoleta inherits Plato {
	var property tieneEspecias
	
	override method aptoVegetariano() = not self.tieneEspecias()
	method esEspecial() = self.esAbundante() or self.tieneEspecias()
	override method valoracion() {
		if(self.esEspecial()){
			return 120
		}
		else {
			return 80
		}
	}	
}

class HamburguesaCarne inherits Plato {
	var property pan
	
	override method peso() = 250
	override method aptoVegetariano() = false
	method valorDelPan() = pan.valor()
	override method valoracion() = 60 + self.valorDelPan()
	
}

object industrial {
	var property valor = 0
}

object casero {
	var property valor = 0
}

object masaMadre{
	var property valor = 0
}

class HamburguesasVeguetarianas inherits HamburguesaCarne{
	var property legumbreUsada = ""
	
	override method aptoVegetariano() = true
	override method valoracion() = super() + self.plus()
	method plus() = 17.min(2 * legumbreUsada.size())
}

class Parrillada inherits Plato {
	var property cortes = []
	
	method cortesDeLaParrila() = cortes 
	method agregarCorte(unCorte) = cortes.addAll(unCorte)	
	method sacarCorte(unCorte) = cortes.remove(unCorte)
	
	override method peso() = cortes.sum({c => c.peso()})
	override method aptoVegetariano() = false
	override method valoracion() = 15 * 0.max(cortes.max({c => c.peso()}) - cortes.size())
}

class Cortes {
	var property nombre
	var property calidad
	var property peso
}



