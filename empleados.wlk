object galvan{
    var sueldo =15000
    method sueldo(){
        return sueldo
    }
    method sueldo(_sueldo){
        sueldo= _sueldo
    }
}

object baigorria{
    var empanadas = 0
    const precioEmpanadas = 15
    method sueldo(){
        empanadas * precioEmpanadas
    }
    method vender(){
        empanadas = empanadas +1
    }
}

object gimenez{
    var fondo = 300000
    method pagarSueldo(empleado){
        fondo = fondo - empleado.sueldo(empleado)
    }
}
