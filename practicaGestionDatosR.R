#Ejercicio 1
edades_descubrimientos <- c(1859,1830,1834,1860,1845)
mean.difftime(edades_descubrimientos)

#Ejercicio 2
cantidad_artefactos <- c(5,6,22,17,8)
valor_suma <- 5+6+22+17+8
print(valor_suma)

#Ejercicio 3
profundidad_hallazgos <- c("10","30")
max(profundidad_hallazgos, na.rm=T)

#Ejercicio 4
materiales_encontrados <- c("cerámica","vidrio","metal")
tipos_materiales_distintos <- length(
  unique(materiales_encontrados))
print(tipos_materiales_distintos)

#Ejercicio 5
años_excavaciones <- c(1986,1980,1978,2000,1991)
años_excavaciones <- length(
  unique(años_excavaciones))
print(años_excavaciones)

#Ejercicio 6
set.seed(123)
matriz_excavaciones <- matrix(
  data = sample(1:10, 15, replace = TRUE), nrow = 3, ncol = 5)
colnames(matriz_excavaciones) <- c("sitio1","sitio2","sitio3","sitio4","sitio5")
rownames(matriz_excavaciones) <- c(1987,1980,1990)
año_max_excavaciones <- colnames(matriz_excavaciones)[
  which.max(rowSums(matriz_excavaciones))]
print(año_max_excavaciones)

#Ejercicio 7
set.seed(123)
matriz_descubrimientos <- matrix(
  data = sample(1:10, 15, replace = TRUE), nrow = 3, ncol = 5)
colnames(matriz_descubrimientos) <- c("sitio1","sitio2","sitio3","sitio4","sitio5")
rownames(matriz_descubrimientos) <- c("desc1","desc2","desc3")
region_antigua <- colnames(matriz_descubrimientos)[
  which.min(colMeans(matriz_descubrimientos))] 
print(region_antigua)

#Ejercicio 8
set.seed(123)
matriz_artefactos <- matrix(
  data = sample(1:10, 15, replace = TRUE), nrow = 3, ncol = 5)
colnames(matriz_artefactos) <- c("art1","art2","art3","art4","art5")
rownames(matriz_artefactos) <- c(1500,1350,1267)
periodo_max_artefactos <- rownames(matriz_artefactos)[
  which.max(rowSums(matriz_artefactos))] 
print(periodo_max_artefactos)

#Ejercicio 9
set.seed(123)
matriz_profundidad <- matrix(
  data = sample(1:10, 15, replace = TRUE), nrow = 3, ncol = 5)
colnames(matriz_profundidad) <- c("exc1","exc2","exc3","exc4","exc5")
rownames(matriz_profundidad) <- c("sitio1","sitio2","sitio3")
sitio_min_profundidad <- rownames(matriz_profundidad)[
  which.min(rowMeans(matriz_profundidad))] 
print(sitio_min_profundidad)

#Ejercicio 10
set.seed(123)
matriz_materiales <- matrix(
  data = sample(1:10, 15, replace = TRUE), nrow = 3, ncol = 5)
colnames(matriz_materiales) <- c("mat1","mat2","mat3","mat4","mat5")
rownames(matriz_materiales) <- c(1970,1980,1987)
tipo_material_comun <- colnames(matriz_materiales)[
  which.max(colSums(matriz_materiales))] 
print(tipo_material_comun)

#Ejercicio 11
registro_artefactos <- data.frame(
  sitio = c("sitio1","sitio2","sitio3"),
  tipo_artefacto = c("tipo1","tipo2","tipo3"),
  fecha_descubrimiento = c("2022-01-01","2022-02-15","2022-03-20"),
  descripción = c("descripcion1","descripcion2","descripcion3"))
print(registro_artefactos)

#Ejercicio 12
excavaciones_equipo <- data.frame(
  equipo = c("equipo1","equipo2","equipo3"),
  sitio = c("sitio1","sitio2","sitio3"),
  fecha_inicio = c("2022-01-01","2022-02-15","2022-03-20"),
  fecha_fin = c("2022-02-01","2022-03-01","2022-04-01"))
print(excavaciones_equipo)

#Ejercicio 13
datos_esqueleto <- data.frame(
  equipo = c("sitio1","sitio2","sitio3"),
  edad_estimada = c(25,30,35),
  sexo = c("masculino","femenino","masculino"),
  fecha_fin = c("ninguna","marcas_en_huesos","elongación_craneal"))
print(datos_esqueleto)

#Ejercicio 14
ubicaciones_geográficas <- data.frame(
  sitio = c("sitio1","sitio2","sitio3"),
  latitud = c(40.2,35.6,38.2),
  longitud = c(-75.2,-80.2,-72.9),
  altitud = c(400,700,800))
print(ubicaciones_geográficas)






