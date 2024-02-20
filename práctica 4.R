#Ejercicio 1
spear <- read_excel("C:/Práctica en aula 1/spearheads.xlsx")
str(spear)
class(spear)
#Ejercicio 2
names(spear) [names(spear) == "Mat"] <- "Materiales"
names(spear) [names(spear) == "Con"] <- "Contexto"
names(spear) [names(spear) == "Cond"] <- "Conservación"
names(spear) [names(spear) == "Loo"] <- "Loop"
names(spear) [names(spear) == "Peg"] <- "Remache"
names(spear) [names(spear) == "Date"] <- "Fecha"
names(spear) [names(spear) == "Maxle"] <- "Longitud_max"
names(spear) [names(spear) == "Socle"] <- "Longitud_encaje"
names(spear) [names(spear) == "Maxwi"] <- "Ancho_max"
names(spear) [names(spear) == "Upsoc"] <- "Ancho_encaje"
names(spear) [names(spear) == "Maxwit"] <- "Ancho_max_encaje"
names(spear) [names(spear) == "Weight"] <- "Peso"
spear
View(spear)

#Ejercicio 3
spear$Contexto=factor(spear$Contexto, levels=c('1','2','3'), labels=c("s/c","Habitacional","Funerario"))
spear$Conservación=factor(spear$Conservación, levels=c(1,2,3,4), labels=c("Excelente","Bueno","Regular","Malo"))
spear$Remache=factor(spear$Remache, levels=c(1,2), labels=c("Si","No"))
spear$Materiales=factor(spear$Materiales, levels=c('1','2'), labels=c("Bronce","Hierro"))
View(spear)

#Ejercicio 4
freq.mat=table(spear$Materiales)
View(freq.mat)
freq.con=table(spear$Contexto)
View(freq.con)
freq.cond=table(spear$Conservación)
View(freq.cond)

#Ejercicio 5
cross.condcon=table(spear$Materiales,spear$Contexto)
View(cross.condcon)
cross.condcon#Visualar tabla de frecuencia en la consola
cross.condmat=table(spear$Materiales,spear$Conservación)
View(cross.condcon)
cross.condmat#Visualizar tabla de frecuencia en la consola

#Ejercicio 6
prop.mat=prop.table(freq.mat)
View(prop.mat)
prop.mat <- as.data.frame(prop.mat)
prop.mat$porcentaje <- prop.mat$Freq*100
View(prop.mat)

prop.con=prop.table(freq.con)
View(prop.con)
prop.con <- as.data.frame(prop.con)
prop.con$porcentaje <- prop.con$Freq*100
View(prop.con)

prop.cond=prop.table(freq.cond)
View(prop.cond)
prop.cond <- as.data.frame(prop.cond)
prop.cond$porcentaje <- prop.cond$Freq*100
View(prop.cond)

#Ejercicio 7
prop.cross.condcon=round(prop.table(cross.condcon)*100,0)
View(prop.cross.condcon)
prop.cross.condmat=round(prop.table(cross.condmat)*100,0)
View(prop.cross.condmat)

#Ejercicio 8
bar.cond <- barplot(table(spear$Conservacion), 
                    main = "Frecuencia de Conservación", xlab = "Conservacion", 
                    ylab = "Frecuencia", col = "skyblue")
bar.con <- barplot(table(spear$Conservacion), 
                    main = "Frecuencia de Contexto", xlab = "Conservacion", 
                    ylab = "Frecuencia", col = "green")

#Ejercicio 9


#Ejercicio 10
bar.cond=barplot(cross.condmat, width = 0,85, ylim=c(0,sum)(cross.condmat),
                  main = "Estado de conservación vs. Materiales",
                  ylab = "Frecuencia",
                  legend=T)
barplot(tabla_materiales, tabla_conservacion,
        main = "Grafico de barras ampliado",
        xlab = "Materiales", ylab = "Conservacion",
        col = "yellow")

#Ejercicio 11
labs <-paste ("(",freq.cond,")\n", names(freq.cond), sep = "")
pie(freq.cond, labels = labs, main = "Conservacion recuento", col = gray.colors(length(levels(spear$Conservacion))))
#Ejercicio 12

