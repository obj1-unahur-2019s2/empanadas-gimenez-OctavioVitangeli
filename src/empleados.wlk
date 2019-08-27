object galvan {

	var sueldo = 15000
	var resultado = 0
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo(){
		resultado += sueldo
	}
	method gastar(cuanto){
		resultado -= cuanto
	}
	method totalDeuda(){
		resultado.min(0)
		return resultado
	}
	method totalDinero(){
		resultado.max(0)
		return resultado
	}
}	
	

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var totalCobrado = 0
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	method cobrarSueldo(){
			totalCobrado += self.sueldo()
	}
	method totalCobrado() {
		return totalCobrado
	}
}

object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) {
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
	
}



