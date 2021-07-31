install.packages("rvest")

library(rvest)

#La pagina web a utilizar es la siguiente

ryutech<- read_html("https://www.ryutech.cl/collections/todos-nuestros-smartphones")
print(html_text(ryutech))

#nombre de los productos
productosryutech<- html_nodes(ryutech, css=".title")
productosryutech2<-html_nodes(ryutech, css=".thumbnail-overlay") 
print(html_text2(productosryutech))
print(html_text2(productosryutech2))

#for para obtener nombres
for (nombresryu in productosryutech) {
  print(html_text(nombresryu))
  
}

#Precio de los productos
preciosryu<- html_nodes(ryutech,css=".was_price")
print(html_text2(preciosryu))

#nombre y precio del producto

print(paste(html_text(preciosryu),html_text(productosryutech)))


#links de los productos

linksryu<- html_nodes(productosryutech2, css="a")
print(html_attr(linksryu,"href"))
ruylink<-print(html_attr(linksryu,"href"))

#disponibilidad 
disporyu<- html_nodes(ryutech, css=".sold_out")
print(html_text(disporyu))
dispo<- print(html_text(disporyu))





#creacion de data

ryudata<- data.frame()
productoryu<- print(html_text2(productosryutech))
precioryu1<-  print(html_text2(preciosryu))
                
linkruy1<-  ruylink

tableroryu<- data.frame(PRODUCTO=productoryu, PRECIO=precioryu1,LINK=linkruy1)
write.csv2(tableroryu,"RYUTECH.csv")

