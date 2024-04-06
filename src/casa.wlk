object casaDePepeYJulian {

	var viveres = 50
	var montoReparacion = 0
        var cuenta = cuentaCorriente
        var estrategiaAhorro = minimoIndispensable

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
        method montoReparacion(_montoReparacion) {
                montoReparacion = _montoReparacion 
        method cuentaAElegir(_cuenta) {
                 cuenta = _cuenta
        }
        method viveres(_viveres) {
                viveres = _viveres
        }
        method estrategiaAhorro(_estrategiaAhorro) {
                estrategiaAhorro = _estrategiaAhorro 
        }
        method mantenimiento() {
          generarGastos().estrategiaAhorro
  
       }
       method viveres() {
         return viveres
       }
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
var casa = casaDePepeYJulian 
calidad = 0 

method calidad(_calidad) {
 calidad = _calidad 
}
method generarGastos() {
 if not viveresSuficientes().casa { 
    costoReparación(40 - viveres().casa).casa
    viveres(40).casa

   }

}
}

object full { 
var calidad = 5 
method generarGastos() {
    if estaEnOrden().casa {
      viveres(100).casa 
      costoReparacion(100 * calidad).casa
     }
    else viveres(viveres().casa + 40).casa
      costoReparación(40 * calidad).casa
}
}

      




