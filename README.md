# trabajo_final_lucas_perez

En el siguiente readme, se van analizar las siguientes paginas:

1.-scart
2.-ryutech

*en este presente readme se vera un análisis en cuanto a los precios que ofrecen cada una de las paginas dentro del área de teléfonos inteligentes*

Scart.cl: Esta página trabaja con varias tiendas y productos, para ofrecer una comparación de precios de estos últimos. También hay ofertas variadas y tiene una interfaz bastante sencilla de usar. Si se usa esta página, se puede observar al abrirla en el navegador que en las pestañas de arriba, se puede visualizar rápidamente la sección de telefonía.
Elección
Se tomo la decisión de tomar esta pagina por el motivo de que es fácil de utlizar, los comandos internos de la pagina son simples y se puede llegar al articulo deseado de manera rápida y sencilla, cabe destacar que dentro de su catalogo tiene una amplia gama de teléfonos inteligentes y de muy variados precios, lo cual nos ayuda bastante en nuestro análisis.
Metodologia 
La metodología que utilizamos para analizar la pagina fue el comando”rvest”, luego de descargar el paquete se podrá utilizar dentro del rstudio,se uso de igual form “html_read” con el fin de introducir la pagina y “html_text” par lograr visualizar el contenido que se encuentra dentro de la pagina mencionada, se uso “html_attrs” para la extracción de los links
Se utilizo herramientas que se encuentras dentro del software rstudio, para poder realizar una limpieza de manera mas rápida se usaron los comandos “html_tex2” 
Luego de todo lo anteriormente mencionado se obtuvieron una serie de valores los cuales se utilizaron para poder llevar a cabo el data.frame, logrando esto la información recopilada de la pagina estado toda expresada de manera mas simple y mas ordenada en una hoja excel.






Pagina 2 ryutech
Ryutech es una empresa la cual presta servicios de reparación de equipos tecnológicos, aparte de vender equipos de la gran mayoría de marcas tales como apple o samsung, posee una red de contactos vía WhatsApp o se puede dirigir directamente a la surcusal física, aparte tiene la opcion de poder comprar tu equipo actual y así no tener la necesidad de vender de forma particular tu equipo y comprar uno nuevo con ellos.
Esta pagina fue escogida por la razón que era muy amigable con el usuario, y que dispone de fácil acceso a los diferentes canales que hay dentro la empresa , y tiene una amplia gama de teléfonos con diferentes precios. Y dispone de varios servicios que pueden lograr atraer mas publico a la pagina.
Metodologia 
Para lograr analizar esta pagina se tuvo que instalar el paquete “rvest” el cual fue de gran ayuda a la hora de adquir la información de la pagina ,luego utilizamos el comando”html_nodes”, y “html_tex2” con el fin de extraer la importación de manera mas limpia y clara, luego para adquirí los precios de los productos aplicamos “html_nodes” y para adquirir los nombres y los precios utilizamos Html_text(precioryu),html_text(productosryutech).
Para adquirir los link de la pagina utilizamos “linsryu-html_nodes(productosryutech2,css=“a”)

Realizamos esta formula para obtener algunos datos estadísticos de ambas paginas web
ryutech1 <- read_excel("C:/Users/lucas_/Downloads/ryutech1.xlsx")
Scart1 <- read_excel("C:/Users/lucas_/Downloads/Scart1.xlsx")
datar <- ryutech1
nrow(datar)
ryu <- datar$PRECIO
plot(ryu)
max(ryu)
min(ryu)
mean(ryu)

boxplot(datar$PRECIO,
        xlab="Ryutech",
        ylab="precios",
        main="Precios Ryutech",
        col="red")
    
datas <- Scart1
nrow(datas)
sca <- datas$Precios
max(sca)
min(sca)
mean(sca)
boxplot(datas$Precios,
        xlab="Scart",
        ylab="precios",
        main="Precios Scart",
        col="blue")
boxplot(datar$PRECIO, datas$Precios,
        xlab=c("ryutech                     -                      scart"),
        ylab="precios",
        main="Precios Ryutech vs Scart",
        col= c(“red","blue"))






Conclusion 
A modo de primera conclusión tenemos que ryutech tiene una mayor variedad de productos(40) en cambio de scart(20), y en ryutech los valores de los productos se encuentran entre $600.000-$800.000 aproximadamente y en scart esta entre los $200.000-$500.000 y tiene un valor atípico que es un iPhone de $1.390.000 
Se puede puede concluir que en ryutech el teléfono mas caro es de $999.990 y el mas económico es $299.990 y la media es de $691.740.
Se puede puede concluir que en scart el teléfono mas caro es de $1.390.000 y el mas económico es $64.990y la media es de $371.840.