//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

// For-In

let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("Hello \(name)!")
}

var songs = ["Shake it Off", "You Belong to Me", "Look What You Made Me Do"]
var song:String

for song in songs {
    print("My favorite song is \(song)")
}

var people = ["players", "haters", "heart-breakers", "fakers"]
var actions = ["play", "hate", "break", "fake"]

// Recorrer una secuencia de números
for i in 0...3 {
    print("\(people[i]) gonna \(actions[i])")
}

// Ciclo anidado
for i in 0..<people.count {
    var str = "\(people[i]) gonna"
    
    for _ in 1...5 {
        str += " \(actions[i])"
    }
    
    print(str)
}

// Potencia de un número
let base = 3
let power = 10
var answer = 1

for _ in 1...power {
    answer *= base
}
print(answer)

// Simular el minutero de un reloj
let minutes = 60
for tickMark in 0..<minutes {
    print(tickMark)
}

// stride
let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
    print(tickMark)
}

for tickMark in stride(from: 0, through: minutes, by: minuteInterval) {
    print(tickMark)
}

// Diccionarios
let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4] // llave: valor
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}

// Cadenas
for i in "cadena" {
    print(i)
}

// While
var counter = 0
while true {
    print("Counter is now \(counter)")
    counter += 1
    
    if counter == 556 {
        break
    }
}

//var songs = ["Shake it Off", "You Belong to Me", "Look What You Made Me Do"]

for song in songs {
    if song == "You Belong to Me" {
        continue
    }
    
    print("My favorite song is \(song)")
}

//: [Next](@next)

