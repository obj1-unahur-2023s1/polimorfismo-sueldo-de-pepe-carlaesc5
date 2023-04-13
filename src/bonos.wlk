import categorias.*
import pepe.*

object bonoFijo {
	method bono(empleado) {
		return 80
	}
}

object bonoPorcentaje {
	
 	method bono(empleado){
		return empleado.getCategoria().neto() * 0.1
	}

}

object bonoDependeFaltas {
	method bono(empleado) {
		const cantFaltas = empleado.faltas()
		return(
			if(cantFaltas == 0){
				100
			}
			else if(cantFaltas == 1){
				50
			}else{
				0
			}
		)
	}
}

object bonoNulo {
	method bono(empleado){		
		return 0
	}
}