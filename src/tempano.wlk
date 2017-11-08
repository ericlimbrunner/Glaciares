class Tempano {
	var estado = compacto
	var peso
	constructor(_peso){
		peso=_peso
	}
	method cambiarEstado(nuevoEstado){
		estado = nuevoEstado
	}
	method parteVisible(){
		return peso*0.15
	}
	method seVeAzul(){
		return estado.seVeAzul(self)
	}
}



object compacto{
	method seVeAzul(tempano){
		return tempano.parteVisible() > 100
	}
}

object aireado{
	method seVeAzul(tempano) = false
}