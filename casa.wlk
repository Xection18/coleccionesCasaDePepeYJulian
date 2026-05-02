import cosas.*

object casa {
  const cosas = []

  method cosasCompradas() = cosas
  method comprar(cosa) = cosas.add(cosa)
  method cantidadDeCosasCompradas() = cosas.size()
  method tieneComida() = cosas.any({cosa => cosa.esComida()})
  method vieneDeEquiparse() {
    if (not self.estaVaciaLaLista()) { 
        return self.ultimoElementoComprado().esElectrodomestico() or self.ultimoElementoComprado().precio() >= 50000
    } else { 
        return  false 
    }
  }
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