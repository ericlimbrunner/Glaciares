class Embarcacion{
	var tamanio
	var fuerza
	constructor(_tamanio,_fuerza){
		tamanio=_tamanio
		fuerza=_fuerza
	}
	method fuerza()=fuerza
	method puedeNavegar(masaDeAgua){
		return masaDeAgua.esNavegable(self) and tamanio<10
	}
	method navegar(masaDeAgua){
		if (self.puedeNavegar(masaDeAgua)){
			masaDeAgua.hacerEfecto()
		}
	}
}