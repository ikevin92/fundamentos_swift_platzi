import UIKit

// Booleanos
let orangesAreOrange = true
let foodIsDelicious = false

var isAged : Bool

isAged = false

if isAged {
    print("Puedes entrar a la fiesta")
}else {
    print("No puedes entrar a la fiesta")
}

var age = 31
if age >= 18 {
    print("puedes entrar a la fiesta")
}


// Tuplas
let http404Error = (404, "Pagina no encontrada")
let (statusCode, statusMessage) = http404Error
print("el codigo del estado es \(statusCode)")
print("el mensaje del servidor es \(statusMessage)")

let (justStatusCode, _) = http404Error
print("el codigo del estado es \(justStatusCode)")

print("el codigo del error es \(http404Error.0) y el mensaje es \(http404Error.1)")

let http200status = (statusCode: 200, description: "OK")
print("el codigo del estado es \(http200status.statusCode) y el mensaje es \(http200status.description)")

// Optionals & Nil
let possibleAge = "31"
let convertedAge = Int(possibleAge) // Int?

var serverResponseCode: Int? = 404 //opcional el tipo de dato
serverResponseCode = nil

var surveyAnswer : String?
surveyAnswer = "42"
//print(surveyAnswer!)

//Force unwrapping de una variable optional (!)
if convertedAge != nil {
    print("la edad del usuario no es nula: \(convertedAge!)") //usar el ! para indicar que estoy seguro
} else {
    print("la edad del usuario es nula")
}

// Optional Binding
if let actualAnswer = surveyAnswer {
    // A llegasr aqui el surveyAnswer !=nil
    print("el string \(surveyAnswer) tiene el valor \(actualAnswer)")
}else {
    // A llegasr aqui el surveyAnswer =nil
    print("el string \(surveyAnswer) es nil...")
}

if let firtsNumber = Int("4"),
   let secondNumber = Int("42"),
   firtsNumber < secondNumber && secondNumber < 100 {
    print("\(firtsNumber) < \(secondNumber) < 100")
}


if let firtsNumber = Int("4"){
    if let secondNumber = Int("42") {
        if firtsNumber < secondNumber && secondNumber < 100 {
            print("\(firtsNumber) < \(secondNumber) < 100")
        }
    }
}


// Unwrap implicito
let possibleString : String? = "Un string opcional"
let forcedString: String = possibleString!

let assummedString: String! = "Un string unwrapped de forma implicita a partir de un optional"
let implicitString: String = assummedString

if assummedString != nil {
    print(assummedString!)
}

if let definitiveString = assummedString {
    print(definitiveString)
}

print(assummedString)
