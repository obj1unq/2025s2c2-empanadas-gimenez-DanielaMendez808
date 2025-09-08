object baigorria {
  var property cantidadEmpanadasVendidas = 0
  const montoPorEmpanada = 15
  var property totalCobrado = 0
  method sueldo() {
    return montoPorEmpanada * cantidadEmpanadasVendidas
  }
  method vender(_cantidad) {
    cantidadEmpanadasVendidas = cantidadEmpanadasVendidas + _cantidad
  }
  method cobrar(){
    totalCobrado = totalCobrado + self.sueldo()
    cantidadEmpanadasVendidas = 0
  }
}

object galvan {
  var property sueldo = 15000
  var property dinero = 0
  var property deuda = 0

  method gastar(cantidad){
    if (self.tieneDinero() && (self.dinero() > cantidad))
    {
        dinero= dinero - cantidad 
    } else {
      deuda = deuda + (cantidad - dinero)
      dinero = 0}
  }
    method cobrar(){
    if (self.deuda() > 0)  
      {self.pagarDeuda()}
    else {
      dinero = dinero + sueldo}
  }
method pagarDeuda(){
    if (self.deuda() > self.sueldo()) 
    {
      deuda = deuda-sueldo
    }else {
      dinero= sueldo - deuda
      deuda=0}
}
  
  method tieneDinero(){
    return dinero > 0
  }

}

// Dueño
object gimenez {
  var property fondo = 300000
  method pagarSueldo(empleado){
    self.validarFondo(empleado)  
    fondo = fondo - empleado.sueldo()
    empleado.cobrar()
  }
  method validarFondo(empleado){
    if ( fondo < empleado.sueldo())
    {self.error ("No hay fondos para pagar a " + empleado)}
  }
}

