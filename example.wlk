object empresa {
  const empleados = []

  method contratar(mensajero) {
    empleados.add(mensajero)
  }

  method despedir(mensajero) {
    empleados.remove(mensajero)
  }

  method despedir_a_todos() {
    empleados.clear()
  }

  method es_grande() = empleados.size() > 2 
  
  method puede_entregar_primero(unPaquete) = unPaquete.puede_ser_entregado_por(empleados.first())

  method peso_ultimo() {
    return empleados.last().peso()
  }

  method puede_entregar(unpaquete) = empleados.any({e => unpaquete.puede_ser_entregado_por(e)}) 
  method mensajeros_que_entregan(unpaquete) = empleados.filter({e => unpaquete.puede_ser_entregado_por(e)})
  method sobrepeso() = empleados.sum({e => e.peso()}) > 500 
}


object matrix {
  method puede_pasar(mensajero) = mensajero.puede_llamar()
}

object brooklyn {
  method puede_pasar(mensajero) = mensajero.peso() > 50
}

object roberto {
  var peso = 90  
  var vehiculo_actual = bicicleta  
  method peso() = peso + vehiculo_actual.peso() 
  method puede_llamar() = false  
  method asignar_vehiculo(vehiculo) {
    vehiculo_actual = vehiculo
  }

  method asignar_peso(peso_) {
    peso = peso_
  }

}

object norris {  
  method peso() = 80  
  method puede_llamar() = true  
}

object neo{
  const objeto = celular 
  method peso() = 0 

  method puede_llamar() = objeto.tiene_credito() 

  method cargar_credito() {
    objeto.con_credito()
  }
}

object paquete {
  var esta_pago = true 
  var destino = matrix 
  method precio() = 50  
  method esta_pago() = esta_pago
  method puede_ser_entregado_por(mensajero) = self.esta_pago() and destino.puede_pasar(mensajero) 
  method no_pago() {
    esta_pago = false 
  }

  method cambiar_destino(destino_) {
    destino = destino_
  }

  method pago() {
    esta_pago = true 
  }
}

object paquetito {
  method esta_pago() = true 

  method puede_ser_entregado_por(mensajero) = true   
}

object paqueton {
  const destinos = [matrix,brooklyn]
  var monto = 0  
  method se_pago() = monto > self.precio() 

  method precio() = destinos.size() * 100 

  method pagar(cantidad) {
    monto += cantidad
  }

  method puede_ser_entregado_por(mensajero) = destinos.first().puede_pasar(mensajero) and destinos.last().puede_pasar(mensajero) and self.se_pago()  
}

object bicicleta {
  method peso() = 5  
}

object camion {
  var cant_acoplado = 3 

  method peso() = 20 * cant_acoplado 

  method cambiar_acoplado(valor) {
    cant_acoplado = valor 
  }
}

object celular {
  var tiene_credito = false 

  method tiene_credito() = tiene_credito

  method con_credito() {
    tiene_credito = true
  } 
}