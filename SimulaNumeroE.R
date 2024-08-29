#esta funicion realiza el calculo y grafica de la 
#aproximacion del numero e con t como argumento de entrada

simulaNumeroE=function(nTotal){
  #creamos un objeto tipo date.frame con los calculos del numero e:
  #primero creamos los objetos que seran insumos para el calculo de VF:
  
  VA=1
  i=1
  
  t=1:nTotal
  tablaNumeroe=data.frame(
    t=t,
    VF=VA*((1+(i/t))^t)
  )
  #creamos un objeto tipo lista con la tabla del numero e y algunos otros objetos:
  objetoLista1=list(
    tablaE=tablaNumeroe,
    valorActual=VA,
    tasInteres=i,
    periodosSimulados=nTotal
  )
  #Ahora grafico los valores de la tabla del numero e:
  plot(x=tablaNumeroe$t,y=tablaNumeroe$VF,type="l",col="purple")
  
  return(objetoLista1)
}