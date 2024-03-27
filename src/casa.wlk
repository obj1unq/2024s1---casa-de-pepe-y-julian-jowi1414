object casaDePepeYJulian {

	var viveres = 50
	var montoReparacion = 0

	method viveresSuficientes() {
		return viveres > 40
	}

	method romper(costoDeReparacion) {
		montoReparacion += costoDeReparacion
	}

	method necesitaReparacion() {
		return montoReparacion > 0
	}

	method estaEnOrden() {
		return self.viveresSuficientes() && self.necesitaReparacion()
	}

}

