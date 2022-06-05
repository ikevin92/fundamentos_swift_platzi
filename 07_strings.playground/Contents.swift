import UIKit
// Strings
let someString = "Soy un string cualquiera"

let multiLineString = """
Soy un string
multilinea
"""

print(multiLineString)

let wiseWords = "\"La imaginacion es mas importante que el saber\" - Albert Einstein"

let dolarSign = "\u{24}"
let blackHeart = "\u{2665}"
let heart = "\u{1f496}"

//Inicialización y mutabilidad
var emptyString = ""
var anotherEmptyString = String()


if emptyString.isEmpty {
    print("Nada que ver")
} else {
    print("El string tiene un valor")
}

var newSomeString = "Un caballo"
newSomeString += "y un carruaje"
newSomeString += "y un soldado"

let aString = "Kevin Orlando"
//aString += "y Maria"

var a = "A"
var b = "B"
print("a vale \(a) y la b vale \(b)")
b = a
print("a vale \(a) y la b vale \(b)")
b = "C"
print("a vale \(a) y la b vale \(b)")
a = "D"
print("a vale \(a) y la b vale \(b)")

//Characters
let name = "Kevin Echeverri 👽"
for character in name {
    print(character)
}

print(name.count)

let exclamationMark : Character = "!"

let nameCharts : [Character] = ["K", "e", "v", "i", "n"]
var nameString = String(nameCharts)

let compoundName = "Juan" + "Gabriel"

nameString.append(exclamationMark)

let multiplier = 3
var message = "El producto de \(multiplier) x 3.5 da \(Double(multiplier)*3.5)"

message.append(exclamationMark)

// INDICES STRINGS
let greeting = "Hola que tal?"
greeting[greeting.startIndex]
//greeting[greeting.endIndex]
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]

for idx in greeting.indices{
    print("\(greeting[idx]) - \(idx)", terminator: "")
}

var welcome = "Hola"
welcome.insert("!", at: welcome.endIndex)
welcome.insert(contentsOf: " que tal", at: welcome.index(before: welcome.endIndex))


welcome.remove(at: welcome.index(before: welcome.endIndex))
welcome

let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex

welcome.removeSubrange(range)
welcome

// substring
greeting
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let firtsPart = greeting[..<index]

let newString = String(firtsPart)

let newGreeting = "Hola, soy Kevin Echeverri"
newGreeting.hasPrefix("Hola")
newGreeting.hasSuffix("l")

let collection = [
    "Act 1 Scene 1","Act 1 Scene 2","Act 1 Scene 3","Act 1 Scene 4","Act 1 Scene 5",
    "Act 2 Scene 1","Act 2 Scene 2","Act 2 Scene 3",
    "Act 3 Scene 1","Act 3 Scene 2"
]

var act1SceneCount = 0
for scene in collection{
    if scene.hasPrefix("Act 1"){
        act1SceneCount += 1
    }
}

print("El numero de escenas del acto es: \(act1SceneCount)")


let ghost = "¡¡Fantasma!! 👻"

for codeUnit in ghost.utf8{
    print(codeUnit, terminator: " ")
}

print(" ")
for codeUnit in ghost.utf16{
    print(codeUnit, terminator: " ")
}


print(" ")
for codeUnit in ghost.unicodeScalars{
    print(codeUnit, terminator: " ")
}
