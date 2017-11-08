import tempano.*
class Glaciar {
	var masa
	var afluentes
	var desembocadura
	constructor(_masa,_afluentes,_desembocadura){
		masa=_masa
		afluentes=_afluentes
		desembocadura=_desembocadura
	}
	method temperatura()=1
	method pesoInicial(){
		return masa/1000000* desembocadura.temperatura()
	}
	method desprendimiento(){
		var tempano=new Tempano(self.pesoInicial())
		masa-=self.pesoInicial()
		desembocadura.agregarTempano(tempano)
	}
	method agregarTempano(tempano){
		desembocadura.aumentarMasa(self.pesoInicial())
	}
	method aumentarMasa(masaExtra){
		masa+=masaExtra
	}
}