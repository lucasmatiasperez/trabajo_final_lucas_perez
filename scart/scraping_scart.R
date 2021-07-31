
install.packages("rvest")

library(rvest)

#La pagina web a utilizar es la siguiente
 
scart<- read_html("https://scart.cl/categoria/2-telefonia?page=1&itemsPerPage=20&sort_by=id&order=asc&view=grid")
print(html_text2(scart))

#navegando en 4 paginas
for (nroPagina in 1:4) {
  print("=====================================================================================================================")
  print(paste("Navegando por el nro de pagina:",nroPagina))
  urlscart <- paste("https://scart.cl/categoria/2-telefonia?order=asc&view=grid&sort_by=id&items_per_page=20&page=",nroPagina,"",sep = "")
  print(urlscart)
  scartcl <- read_html(urlscart)
  print(html_text(scartcl))
}



#nombre de la pagina donde se encuentra el producto
nombrestienda<- html_nodes(scart, css=".card-title.text-break")

print(html_text(nombrestienda))

for (tienda in nombrestienda) {
  print(html_text2(tienda))
  
}




#Nombre del producto de la pagina web
nombredelproducto<- html_nodes(scart, css=".card-text.text-break")
print(html_text2(nombredelproducto))

#limpieza nombre
nombrelimpio<- print(html_text2(nombredelproducto))
nombrelimpio<- gsub("\r","",nombrelimpio)  
print(nombrelimpio)


#nombre del producto y la pagina web donde se encuentra
print(paste((nombrelimpio),html_text2(nombrestienda)))


#precio del producto
precio<- html_nodes(scart, css=".me-1")
print(html_text2(precio))


#limpieza precio producto
precioproducto<-print(html_text2(precio))
print(precioproducto)  

precioproducto <- gsub("\r","",precioproducto)    
print(precioproducto)





##obtener links de los productos
linkscart<- html_nodes(nombredelproducto, css="a")
print(html_attr(linkscart,"href"))
links2<-print(html_attr(linkscart,"href")) 



#Creacion del data frame
scardatos<- data.frame()
producto1<- nombrelimpio
pagina<- print(html_text(nombrestienda))
precios1<- precioproducto
print(links2)

tablero<- data.frame(Nombre=producto1, PaginaWeb=pagina, Precios=precios1, LINKSPRODUCTOS=links2)
write.csv2(tablero,"Scart.csv")
