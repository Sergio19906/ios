// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//var arreglo[Int] = (1,2,3)
//
//arreglo += 1
//
//println(arreglo)
//
//
//arreglo += "hola"
//
//
//
//println(arreglo(0))


var arrayCadena:[String] = ["Hugo","Jose","Daniel"]

for nombre in arrayCadena{
    
    println("Nombre \(nombre)")
}

//arrayCadena.append(1900)

var miTupla = ("EEUU", "Yousemite", 1937)

var otraTupla = (nombre:"Rodrigo", apellido:"Royg", edad:31)


println(otraTupla.nombre)


switch otraTupla{
case (_, "Royg", _):
        println("Este es el nombre")
case ("Juan", "Jose", 30):
        println("Este es otro")
default:
    println("No se encontraron coincidencias")
}



var paisaj1 = (pais:"EEUU", ciudad: "New York", latitud: "0.64165", longitud: "0.564165", storia:"asdasdfadfs", image:UIImage(named: "imagen1.jpg"))
var paisaj2 = (pais:"korea", ciudad: "okinawa", latitud: "0.64165", longitud: "0.564165", hostoria:"asdasdfadfs", image:UIImage(named: "imagen2.jpg"))
var paisaj3 = (pais:"concepcio", ciudad: "New York", latitud: "0.64165", longitud: "0.564165", hostoria:"asdasdfadfs", image:UIImage(named: "imagen3.jpg"))
var paisaj4 = (pais:"itagua", ciudad: "New York", latitud: "0.64165", longitud: "0.564165", hostoria:"asdasdfadfs", image:UIImage(named: "imagen4.jpg"))


var  paisa = (paisaj1, paisaj2, paisaj3, paisaj4)
println(paisa.0.pais)















