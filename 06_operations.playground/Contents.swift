import UIKit

// operaciones de asignación
let b = 10
var a = 5
a = b

let (x,y) = (1,2)

if a == b {
    print("los valores de a y b son iguales")
}

1+2
5-3
2*3
10.0/2.5
"Hello " + "World"

// D/d -> D == d*c+r
9/4 //c
9%4 //r

9 == 4*2+1

-9%4

let five = 5
let minusFive = -five
let plusFive = -minusFive

let minusSix = -6
let alsoMinusSix = +minusSix

var number = 5
number += 3 //number = number + 3
number -= 2 //number = number - 2

// comparaciones
1 == 1
1 == 2
1 != 2
2 > 1
2 < 1
2 >= 1
1 >= 1
2 <= 1

let name = "Kevin Orlando"

if name == "Kevin Orlando" {
    print("Bienvenido \(name), eres mi invitado a la fiesta")
}
else{
    print("Cuidado, ha aparecido un \(name) salvaje")
}

(1,"Kevin Orlando") < (2, "Maria Elena")
(3,"Kevin Orlando") < (3, "Maria Elena")
(3,"Maria") < (3, "Kevin")
(4, "perro") == (4, "perro")

("perro", true) == ("perro", false)


// Operador ternario
let contentHeight = 40
var hasImage = true
var rowHeight = 0

rowHeight = contentHeight + (hasImage ? 50 : 10)

//Operador Nil Coalescing
let defaultAge = 18
var userAge : Int?

var ageToBeUsed = userAge ?? defaultAge //en js es el &&

let defaultColorName =  "red"
var userColorName: String?

var colorName  = userColorName ?? defaultColorName


//Rangos
for idx in 1...5{
    print(idx)
}

for idx in 1..<5{
    print(idx)
}

let names = ["Ricardo", "Kevin", "Orlando"]
for i in 0..<names.count{
    print("La persona \(i+1) se llama \(names[i])")
}

for name in names[1...]{
    print(name)
}

for name in names[..<2]{
    print(name)
}

let range = ...5
range.contains(7)
range.contains(4)
range.contains(-2)

// operadores logicos
let allowEntry = false
if !allowEntry{
    print("ACCESO DENEGADO")
}

let enterDoorCode = true
let passRetinaScan = false

//AND
if enterDoorCode && passRetinaScan {
    print("Bienvenido a la empresa")
} else{
    print("ACCESO DENEGADO")
}

let hasMoney = true
let hasInvitation = false

//OR
if hasMoney || hasInvitation {
    print("Bienvenido a la fiesta")
} else {
    print("No eres bienvenido aqui...")
}

//  AND Y OR COMBINADAS
if (enterDoorCode && passRetinaScan)
    || ( hasMoney || hasInvitation) {
    print("Has entrado")
} else {
    print("Acceso denegado")
}
