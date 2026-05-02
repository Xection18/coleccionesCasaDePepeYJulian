object cuentas {
    const cuentas = #{}
    
    method depositar(importe) {

    }

    method extraer(importe) {

    }

    method saldo() = 0
}

object cuentaCorriente {
    var saldo = 0

    method saldo() = saldo
    method depositar(importe) {
        saldo = saldo + importe
      
    }
    method extraer(importe) {
        if (saldo >= importe) {
            saldo = saldo - importe
        }
    }
}

object cuentaConGastos {
    var saldo = 0

    method saldo() = saldo
    method depositar(importe) {
        saldo = saldo + importe - 200
    }
    method extraer(importe) {
        if (saldo >= importe + 200) {
            saldo = saldo - importe - 200
        }
    }
}

object cuentaCombinada {

    var cuenta1 = cuentaCorriente
    var cuenta2 = cuentaConGastos

    method saldo() = cuenta1.saldo() + cuenta2.saldo()

    method depositar(importe) { 
        cuenta1.depositar(importe)
    }
    method extraer(importe) {
        if (cuenta1.saldo() >= importe) {
            cuenta1.extraer(importe)
        } else if (cuenta1.saldo() + cuenta2.saldo() >= importe) {
            var restante = importe - cuenta1.saldo()
            cuenta1.extraer(restante)
            cuenta2.extraer(restante - cuenta2.saldo())
        }
    }
}

