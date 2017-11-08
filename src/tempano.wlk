class Tempano {
	var peso
	var estado= compacto
	constructor (_peso){
		peso=_peso
	}
	method cambiarEstado (){
		estado= aireado
	}
	method seVeAzul(){
		estado.seVeAzul(self)
	}
	method pesoParteVisible(){
		return peso*0.15
	}
	method cuantoEnfriaElAgua(){
		estado.enfriaElAgua(self)
	}
	method centecimaPartePeso(){
		return peso/100
	}
	method esGrande(){
		return peso>500
	}
	method estado()=estado
	method reducirMasa(valor){
		peso-=valor
		if (self.esGrande()&& estado.esCompacto()){
			self.cambiarEstado()
		}
	}
}

object compacto {
	method seVeAzul(tempano){
		return tempano.parteVisible()>=100
}
	method enfriaElAgua(tempano){
		return tempano.centecimaPartePeso()
	}
	method esCompacto()=true

}

object aireado {
	method seVeAzul(tempano){
		return false
}
	method enfriaElAgua(tempano){
		return 0.5
	}
	method esCompacto()=false
}