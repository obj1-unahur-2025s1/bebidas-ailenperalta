object tito {
    var bebida = null

    var cantidad = 0

    method peso() = 70 // method peso() { return 70 }

    method inerciaBase() = 490

    method consumir(unaCantidad, unaBebida) {
        cantidad = unaCantidad
        bebida = unaBebida
    }

    method bebida() = bebida // sin este mensaje no puedo saber lo ultimo que tomo

    method velocidad() {
        return bebida.rendimiento(cantidad) * self.inerciaBase() / self.peso()
    }
}

object whisky {
    method rendimiento(cantidad) = 0.9 ** cantidad
}

object terere {
    method rendimiento(cantidad) {
        return (cantidad * 0.1).max(1) // 1.max(cantidad * 0.1)
    } 
}

object cianuro {
    method rendimiento(cantidad) = 0 // no falla al no tener el parametro
}