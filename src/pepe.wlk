import bonos.*
import categorias.*

object pepe {
	var categoria
	var bonoPresentismo
	var bonoResultado
	var cantFaltas
	
	method getCategoria() = categoria
	method setCategoria(cat) {
		categoria = cat
	}
	
	method getBonoPresentismo() = bonoPresentismo
	method setPresentismo(bono) {
		bonoPresentismo = bono
	}
	
	method getBonoResultado() = bonoResultado
	method setBonoResultado(bono) {
		if(bono != bonoDependeFaltas) {			
			bonoResultado = bono
		}
	}
	
	method getCantFaltas() = cantFaltas
	method setCantFaltas(cant) {
		cantFaltas = cant
	}
	
	method faltas() {
		return cantFaltas
	}
	
	method sueldoNeto(){
		return categoria.neto()
	}
	
	method sueldo(){
		return self.sueldoNeto() + bonoPresentismo.bono(self) + bonoResultado.bono(self)
	}
}


