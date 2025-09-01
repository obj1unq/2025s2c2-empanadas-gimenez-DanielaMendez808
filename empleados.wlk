object galvan {
  
    var sueldo =15000
    var dinero = 0
    var deuda = 0
    method sueldo(){
        return sueldo
    }
    method sueldo(_sueldo){
        sueldo = _sueldo
    }
        
    method gastar(cantidad){
        if (self.tieneDinero() && (cantidad < self.dinero())){
            dinero = dinero - cantidad
        }
        else{
            deuda = deuda + (cantidad - dinero)
            dinero = 0
        }
    }
    method dinero(){
        return dinero
    }
    method deuda(){
        return deuda
    }
    method tieneDeuda(){
        return deuda > 0 
    }
    method tieneDinero(){
        return dinero > 0
    }
    method cobrar(){
        if (self.tieneDeuda() && (self.deuda() >sueldo)){
            deuda= deuda - sueldo
        } else{
            dinero = sueldo - deuda
            deuda = 0
        }
        
    }
}

// de su dinero con el sueldo agregado, al dinero le restamos la deuda
// si la deuda es mayor al dinero, la deuda menos el dinero , dinero = 0

object baigorria{
    var empanadas = 0
    const precioEmpanadas = 15
    var totalCobrado= 0
    method sueldo(){
        return empanadas * precioEmpanadas
    }

    method vender(_cantidad){
        empanadas = empanadas + _cantidad
    }
    method cobrar(){
        totalCobrado = totalCobrado + self.sueldo()
        empanadas = 0
    }
    method totalCobrado(){
        return totalCobrado
    }

}

object gimenez{
    var fondo = 300000
    method pagarSueldo(empleado){
 
        fondo = fondo - empleado.sueldo()
           empleado.cobrar()
           }
    method gastar(cantidad){
        fondo= fondo - cantidad
    }
    method fondo(){
        return fondo
    }
}