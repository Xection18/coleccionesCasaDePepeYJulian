import cosas.*
import cuentasBancarias.*

object casa {
  const cosas = []
  var cuentaBancaria = cuentaCorriente

  method cambiarCuentaBancaria(cuenta) {
    cuentaBancaria = cuenta
  }
  method cosasCompradas() = cosas
  method comprar(cosa){
    if (cuentaBancaria.saldo() >= cosa.precio()) {
        cosas.add(cosa)
        cuentaBancaria.extraer(cosa.precio())
    }
  }
  method cantidadDeCosasCompradas() = cosas.size()
  method tieneComida() = cosas.any({cosa => cosa.esComida()})
  method vieneDeEquiparse() {
    if (not self.estaVaciaLaLista()) { 
        return self.ultimoElementoComprado().esElectrodomestico() or self.ultimoElementoComprado().precio() >= 50000
    } else { 
        return  false 
    }
  }
  method gastar(importe) {
    cuentaBancaria.extraer(importe)
  }
  method dineroDisponible() = cuentaBancaria.saldo()
  method estaVaciaLaLista() = cosas.isEmpty()
  method ultimoElementoComprado() = cosas.last()
  method esDerrochona() = cosas.sum({cosa => cosa.precio()}) >= 90000
  method compraMasCara() = cosas.max({cosa => cosa.precio()})
  method electrodomesticosComprados() = cosas.filter({cosa => cosa.esElectrodomestico()})
  method malaEpoca() = cosas.all({cosa => cosa.esComida()})
  method queFaltaComprar(lista) = lista.filter({cosa => not self.fueComprado(cosa)})
  method fueComprado(cosa) = cosas.contains(cosa)
  method faltaComida() = self.cantidadDeComidasCompradas() < 2
  method cantidadDeComidasCompradas() = cosas.count({cosa => cosa.esComida()})
}