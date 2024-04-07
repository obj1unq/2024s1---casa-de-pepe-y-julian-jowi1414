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
        }        
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
          estrategiaAhorro.generarGastos()
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

object cuentaGastos {
var saldo =0
var costoOperacion = 0
      method costoOperacion(_costoOperacion) {
      costoOperacion = _costoOperacion 
      }
      method depositar(sumaADepositar) {
      saldo = saldo + sumaADepositar - costoOperacion
      } 
      method extraer(sumaAExtraer) {
      saldo -= sumaAExtraer
      }
      method saldo() {
      return saldo
      }
}

object cuentaCombinada {
var saldo = 0 
var cuentaPrimaria = cuentaCorriente
var cuentaSecundaria = cuentaGastos 
      method cuentaPrimaria(_cuentaPrimaria) {
      cuentaPrimaria = _cuentaPrimaria
      }
      method cuentaSecundaria(_cuentaSecundaria) {
      cuentaSecundaria = _cuentaSecundaria 

      }
      method extraer(sumaAExtraer) {
         if (cuentaPrimaria.saldo() >= sumaAExtraer) {
            cuentaPrimaria.extraer(sumaAExtraer)
         }
         else cuentaSecundaria.extraer(sumaAExtraer)
   
      }
      method depositar(sumaADepositar) {
        cuentaPrimaria.depositar(sumaADepositar)
      }

}

object minimoIndispensable {
var casa = casaDePepeYJulian 
var calidad = 0 
      method casaAMantener(_casa) {
      	casa = _casa
      }		
      method calidad(_calidad) {
      calidad = _calidad 
      }
      method generarGastos() {
        if (not casa.viveresSuficientes()) { 
          casa.costoReparacion(40 - casa.viveres())
          casa.viveres(40)

        }

     }
}

object full { 
var calidad = 5 
var casa = casaDePepeYJulian
     method casaAMantener(_casa) {
      	casa = _casa
      }	
     method generarGastos() {
         if (casa.estaEnOrden()) {
            casa.viveres(100) 
            casa.costoReparacion(100 * calidad)
         }
         else casa.viveres(casa.viveres() + 40)
            casa.costoReparacion(40 * calidad)
      }
}
  




