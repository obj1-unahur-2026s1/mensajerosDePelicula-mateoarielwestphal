object empresa {
  const empleados = [norris,neo,roberto]

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
  
  method peso_ultimo() {
    return empleados.last().peso()
  }
}


object matrix {
  method puede_pasar(mensajero) = mensajero.puede_llamar() and mensajero.paquete_esta_pago()
}

object brooklyn {
  method puede_pasar(mensajero) = mensajero.peso() > 50 and mensajero.paquete_esta_pago()
}

object roberto {
  var peso = 90 
  const paquete_ = paquete 
  var vehiculo_actual = bicicleta 

  method paquete_esta_pago() = paquete_.esta_pago() 
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
  const paquete_ = paquete 
  method paquete_esta_pago() = paquete_.esta_pago() 
  method peso() = 80  
  method puede_llamar() = true  
}

object neo{
  const paquete_ = paquete 
  method paquete_esta_pago() = paquete_.esta_pago() 
  const objeto = celular 
  method peso() = 0 

  method puede_llamar() = objeto.tiene_credito() 

  method cargar_credito() {
    objeto.con_credito()
  }
}

object paquete {
  var esta_pago = true 

  method esta_pago() = esta_pago

  method no_pago() {
    esta_pago = false 
  }

  method pago() {
    esta_pago = true 
  }
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