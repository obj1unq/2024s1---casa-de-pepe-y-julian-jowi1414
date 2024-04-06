object casaDePepeYJulian {

	var viveres = 50
	var montoReparacion = 0
        var cuenta = cuentaCorriente

	method viveresSuficientes() {
		return viveres > 40
	}

	method romper(costoDeReparacion) {
		montoReparacion += costoDeReparacion
                cuenta.extraer(costoDeReparacion)
	}

	method necesitaReparacion() {
		return montoReparacion > 0
	}

	method estaEnOrden() {
		return self.viveresSuficientes() && self.necesitaReparacion()
	}
        method cuentaAElegir(_cuenta) {
         var cuenta = _cuenta

 }

object cuentaCorriente {
var saldo = 0
method saldo() {
return saldo 
}
method depositar(_sumaADepositar) {
saldo += _sumaADepositar
}
method extraer(sumaAExtraer) {
saldo -=sumaAExtraer 
}
}

object cuentagastos {
var saldo =0
var costoOperación = 0
method saldo() {
return saldo
}
method costoOperacion(_costoOperacion) {
costoOperacion = _costoOperacion 
}
method depositar(SumaADepositar) {
saldo = saldo + sumaADepositar - costo Operación
} 
method extraer(sumaAExtraer) {
saldo -= sumaAExtraer
}
method saldo() {
return saldo
}

object cuentaCombinada {
var saldo =0 
var cuentaPrimaria = cuentaCorriente
var cuentaSecundaria = cuentaGastos 
method cuentaPrimaria(_cuentaPrimaria)
cuentaPrimaria = _cuentaPrimaria
}
method cuentaSecundaria(_cuentaSecundaria) {
cuentaSecundaria = _cuentaSecundaria 

}
method extraer(sumaAExtraer) {
 if saldo().cuentaPrimaria >= sumaAextraer {
   extraer(sumaAExtraer).cuentaPrimaria
}
   else extraer(sumaAExtraer).cuentaSecundaria
   
}
method depositar(sumaADepositar) {
depositar(sumaADepositar).cuentaPrimaria
}

}

object minimoIndispensable {




