import UIKit

/* Print y su uso */
var greeting = "Hello, playground"
print(greeting)

print("El valor de la variable es " + greeting)
print("El valor de la variable es ", greeting)
print("El valor de la variable es \(greeting)")
print("\(greeting)")

/* Variables y propiedades */

var x:Int = 12
x = 4 * x
print("El valor es \(x)")

var y:Double = 32
y = 4.3*y
print("El valor es \(y)")

// Constates

let ten = 10 // Constante entera
let pi = 3.141597 // Constante pi en Double
let floatPi:Float = 3.141597 // Constante pi en Float

// Strings

var 🍎 = "apple"
print(🍎)

var sonrisa = "😃"
print(sonrisa)

var inputdata1:String = "Geeks for Geeks"
print("El valor string es: \(inputdata1)")

inputdata1 = "GFG"
print("El valor string es: \(inputdata1)")

// Float y Double
var eDouble:Double = 2.71828
var eFloat:Float = 2.71828

// Booleanos
let t:Bool = true
let f:Bool = false

// Caracter
var entrada:Character = "e"
var salida:Character = "s"
print(entrada)
print(salida)

// Control de flujo

// if-else
var horaDeLevantarse = 7
if horaDeLevantarse == 5 {
    print("Hora del Gym")
} else {
    print("Hora de clase")
}

if horaDeLevantarse == 5 {
    print("Hora del Gym")
} else if horaDeLevantarse == 6 {
    print("Hora de clase")
} else {
    print("Fin de semana")
}

// Switch-Case-Default
horaDeLevantarse=5
switch horaDeLevantarse {
    case 5:
        print("Hora del Gym")
    case 6:
        print("Hora de clase")
    default:
        print("Fin de semana")
}


// Ejemplo del bono
// Versión if-else

var bono:Int = 25000
if bono >= 10000 {
    print("Viaje a Paris y Londres")
} else if bono >= 5000 {
    print("Tokio")
} else if bono >= 1000 {
    print("Bangkok")
} else {
    print("Quedate en casa")
}

switch bono {
    case 10000...:
        print("Paris y Londres")
    case 5000...9999:
        print("Tokio")
    case 1000...4999:
        print("Bangkok")
    default:
        print("Quedate en casa")
}

 
