import UIKit

var greeting = "Hello, playground"

print(greeting)
print("This is a greeting")
print("This is a \(greeting)")

var x:Double=4
x=5.2*x
print("x = \(x)")

var 🍎 = "apple"
var apple = 🍎
print(🍎)
print("🍎")
print(apple)

print("Impresión de manzanas", 🍎)

var i:Int

for i in 1...10 {
    print("El valor \(i*3) es el que buscaba")
}

var people = ["players", "haters", "heart-breakers", "fakers"]
var actions = ["play", "hate", "break", "fake"]

for i in 0 ..< people.count {
    var str = "\(people[i]) gonna"

    for _ in 1 ... 5 {
        str += " \(actions[i])"
    }

    print(str)
}

let minutes = 60
for tickMark in 0..<minutes {
    // render the tick mark each minute (60 times)
    print(tickMark)
}

let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
    // render the tick mark every 5 minutes (0, 5, 10, 15 ... 45, 50, 55)
    print(tickMark)
}

let hours = 12
let hourInterval = 3
for tickMark in stride(from: 3, through: hours, by: hourInterval) {
    // render the tick mark every 3 hours (3, 6, 9, 12)
    print(tickMark)
}

var counter = 0

while true {
    print("Counter is now \(counter)")
    counter += 1

    if counter == 556 {
        break
    }
}

var songs = ["Shake it Off", "You Belong with Me", "Look What You Made Me Do"]

for song in songs {
    if song == "You Belong with Me" {
        continue
    }

    print("My favorite song is \(song)")
}

// Serpientes y escaleras
let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)

board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08

var square = 0
var diceRoll = 0
while square < finalSquare {
    // roll the dice
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    // move by the rolled amount
    square += diceRoll
    if square < board.count {
        // if we're still on the board, move up or down for a snake or a ladder
        square += board[square]
    }
}
print("Game over!")


