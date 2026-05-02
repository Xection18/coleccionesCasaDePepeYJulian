import dolar.*
object heladera {
    method precio() = 200000
    method esElectrodomestico() = true
    method esComida() = false
}

object cama {
    method precio() = 80000
    method esElectrodomestico() = false
    method esComida() = false
}

object tiraDeAsado {
    method precio() = 3500
    method esElectrodomestico() = false
    method esComida() = true
}

object paqueteFideos {
    method precio() = 500
    method esElectrodomestico() = false
    method esComida() = true
}

object plancha {
    method precio() = 12000
    method esElectrodomestico() = true
    method esComida() = false
}

object kiloDeMilanesas {
    method precio() = 2600
    method esElectrodomestico() = false
    method esComida() = true
}

object botellaDeSalsa {
    method precio() = 900
    method esElectrodomestico() = false
    method esComida() = true
}

object microondas {
    method precio() = 42000
    method esElectrodomestico() = true
    method esComida() = false
}

object kiloDeCebollas {
    method precio() = 250
    method esElectrodomestico() = false
    method esComida() = true
}

object computadora {
    method precio() = dolar.precioVenta() * 500
    method esElectrodomestico() = true
    method esComida() = false
}

object packDeComida {
    var plato = tiraDeAsado
    var aderezo = botellaDeSalsa

    method cambiarPlato(unPlato) {
        plato = unPlato
    }

    method cambiarAderezo(unAderezo) {
        aderezo = unAderezo
    }

    method precio() = plato.precio() + aderezo.precio()
    method esElectrodomestico() = false
    method esComida() = true
}

