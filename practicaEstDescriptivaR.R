#Práctica 1
#Ejercicio 1
x <- c(1,2,3,4,5)
y <- c(9.1,2.4,7.5,1.3,3.4)
#Un vector es una estructura de datos que almacena elementos del mismo tipo.Puede definirse mediante la función concatenar 'c()'
#un vector en R solo puede contener elementos del mismo tipo, mientras que una lista puede contener elementos de diferentes tipos.
#En cuanto a su longitud, los vectores poseen una fija y homogénea, mientras que las listas pueden se de logitud variable y heterogéneas.
#Se puede ver que los dos vectores tienen una longitud de 5, puesto que contienen cinco elementos cada uno.
#El uso de datos decimales 'double' en un vector conlleva un mayor consumo de memoria en comparación con un vector que almacene valores enteros 'integrer'

#Ejercicio 2
valor_suma <- x+y
print(valor_suma)
valor_resta <- x-y 
print(valor_resta)
valor_multiplicación <- x*y
print(valor_multiplicación)
valor_división <- x/y
print(valor_división)
valor_potencia <- x^y
print(valor_potencia)
#Ejercicio 3
valor_potencia <- y^2
print(valor_potencia)
#Ejercicio 4
valor_multiplicación <- y*10
print(valor_multiplicación)
#Ejercicio 5
valor_suma <- y+25
print(valor_suma)
#Ejercicio 6
max(y)
#Ejercicio 7
min(y)
#Ejercicio 8
abs(y)
#Ejercicio 9
valor_raizcuadrada <- sqrt(y)
print(valor_raizcuadrada)
#Ejercicio 10
suma_y <- sum(y)
print(suma_y)
#Ejercicio 11
list <- list(c(x,y))
print(list)
typeof(list)
str(list)
View(list)
#La longitud de la lista es 1, ya que contiene un único elemento.
#Con la función 'typeof()' podemos determinar el tipo de dato empleado por R para almacenar los valores numéricos, en este caso se está usando una lista 'list'
#El vector 'x' contiene números enteros, y una vez que 'x' e 'y' se combinan en el vector 'list', la lista se convertirá a un tipo de dato que pueda contener tanto números enteros como decimales, por lo que 'double' será la opción más precisa, ya que puede contener tanto enteros como decimales. 
 
#Ejercicio 12
is.na (list)
#Ejercicio 13
Z <- c(29,NA,12,46,73)
print(Z)
#Ejercicio 14
mean(Z, na.rm=T)
#Me salía NA, ya que contenía valores faltantes, pero con 'na.rm=T' se utiliza para que se remuevan los valores faltantes y los ignore por completo al hacer cualquier tipo de calculo.
#Ejercicio 15
matriz <- matrix(c(24,69,3,90,23,56,1,63,87,21,77,19), 
                  nrow= 4, ncol =3,
                  byrow = T)
print(matriz)
#Ejercicio 16
matriz_filas <- matrix(matriz, nrow= TRUE)
print(matriz_filas)
#Ejercicio 17
a <- matrix(data = 1:9, nrow = 3, ncol = 3, byrow = T)
b <- matrix(data = 10:18, nrow = 3, ncol = 3, byrow = T)
print(a)
print(b)
#Ejercicio 18
suma_matriz <- a+b
resta_matriz <- a-b
print(suma_matriz)
print(resta_matriz)
#la resta de las matrices nos da valores negativos al ser los valores de "a" menores a los de "b"
#Ejercicio 19
matriz
matriz_t <- t(matriz)
matriz_t
#Ejercicio 20
constante <- 2
matriz_resultado <- matriz*constante
print(matriz_resultado)
#Ejercicio 21
matriz_mult <- a*b
print(matriz_mult)
#Ejercicio 22
elemento_segunda_fila_tercera_columna <- matriz_mult[2, 3]
print(elemento_segunda_fila_tercera_columna)
segunda_fila <- matriz_mult[2, ]
print(segunda_fila)
tercera_columna <- matriz_mult[ ,3]
print(tercera_columna)

#Práctica2
#Ejercicio 1
set.seed(123)
num_cuentas <- round(rnorm(100, mean = 50, sd = 10))
print(num_cuentas)
#Ejercicio 2
mean(num_cuentas)
#Ejercicio 3
median(num_cuentas)
#Ejercicio 4
moda <- as.numeric(names(sort(table(num_cuentas), decreasing = TRUE)[1]))
print(paste(moda))
#Ejercicio 5
range(num_cuentas)
#Ejercicio 6
quantile(num_cuentas)
#Ejercicio 7
percentile_75 <- quantile(num_cuentas, 0,75)
print(percentile_75)
#Ejercicio 8
varianza <- var(num_cuentas)
print(varianza)
#Ejercicio 9
desviación_estandar <- sd(num_cuentas)
print(desviación_estandar)

