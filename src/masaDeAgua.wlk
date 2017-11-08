class MasaDeAgua{
	var tempanos=#{}
	var temperaturaAmbiente=10
	method agregarTempano(tempano){
		tempanos.add(tempano)
	}
	method esAtractivo(){
		return self.masDeCincoTempanosFlotando() && self.todosTempanosAzulesOGrandes()
	}
	method masDeCincoTempanosFlotando(){
		return tempanos.size()>=5
	}
	method todosTempanosAzulesOGrandes(){
		return tempanos.all({tempano=>tempano.esGrande() || tempano.seVeAzul()})
	}
	method temperatura(){
		return temperaturaAmbiente - self.enfriamientoTotal()
	}
	method enfriamientoTotal(){
		return tempanos.sum({tempano=>tempano.cuantoEnfriaElAgua()})
	}
	method cantidadTempanosGrandes(){
		return tempanos.size({tempano=>tempano.esGrande()})
	}
	method esNavegable(embarcacion)
	method hacerEfecto(){
		tempanos.forEach({tempano=>tempano.reducirMasa(1)})
	}
}
class Rio inherits MasaDeAgua{
	var velocidadBase
	constructor (_velocidadBase){
		velocidadBase=_velocidadBase
	}
	method velocidad(){
		return velocidadBase- self.cantidadTempanosGrandes()
	}
	override method temperatura(){
		return super()+ self.velocidad()
	}
	override method esNavegable(embarcacion){
		return self.velocidad()<embarcacion.fuerza()
	}
	
}
class Lago inherits MasaDeAgua{
	override method esNavegable(embarcacion){
		return self.temperatura()>0 and self.cantidadTempanosGrandes()>20
	}
}