object pepe {
  //   VVV    va a ser VAR pero me molesta el supuesto bug
  var categoria = cadete
  var faltas = 0
  var bonoPresentismo = normal
  var bonoResultado = montoFijo
  
  
  method sueldo() = self.neto() + bonoResultado.valor() + bonoPresentismo.valor(faltas)
  

  method faltas() = faltas
  
  method categoria(_categoria) {
    categoria = _categoria
  }
  
  method categoria() = categoria
  
  method faltas(_faltas) {
    faltas = _faltas
  }
  
  method bonoPresentismo(_bonoPresentismo) {
    bonoPresentismo = _bonoPresentismo
  }
  
  method bonoResultado(_bonoResultado) {
    bonoResultado = _bonoResultado
  }

  method neto() {
    return categoria.neto()
  }
}

object cadete {
  method neto() = 20000
}

object gerente {
  method neto() = 15000
}

object montoFijo {
  method valor() = 800
}

object porcentaje {
  var property empleado = pepe 

  method valor() = empleado.neto() * 0.1
}

object nulo {
  method valor() = 0
}

object normal {
  method valor(faltas) = if (faltas == 0) {
    2000
  } else {
    if (faltas == 1) 1000 else 0
  }
}

object ajuste {
  method valor(faltas) = if (faltas == 0) 100 else 0
}

object demagogico {
  var property empleado = pepe 
  method valor(faltas) = if (empleado.neto() < 500) 18000 else 300
}

object nuloPresentismo {
  method valor(faltas) = 0
}