
sumar_sucesivamente <- function(a, b) {
  if (b == 0) {
    return(0)
  } else {
    return(a + sumar_sucesivamente(a, b - 1))
  }
}

# Función recursiva para calcular el factorial usando sumas sucesivas
factorial_sumas_sucesivas <- function(N) {
  if (N == 0) {
    return(1)
  } else {
    return(sumar_sucesivamente(N, factorial_sumas_sucesivas(N - 1)))
  }
}

# Función principal para manejar la entrada del usuario y mostrar el resultado
main <- function() {
  cat("Ingrese un número para calcular su factorial usando sumas sucesivas:\n")
  N <- as.integer(readLines(n = 1))

  # Validar entrada
  if (N < 0) {
    cat("El factorial no está definido para números negativos.\n")
    return()
  }

  # Calcular factorial usando sumas sucesivas
  resultado_factorial <- factorial_sumas_sucesivas(N)

  # Mostrar resultado
  cat("El factorial de", N, "calculado por sumas sucesivas es:", resultado_factorial, "\n")
}

# Llamar a la función principal
main()
