import UIKit

// try catch
func canThrowError() throws{
    // aquí hay codigo que puede causar un error
}


do {
    try canThrowError()
    // si llegamos aquí, no ha habido error
}
catch{
    // si llegamos aqui, ha habido un error
}

func makeASandwich( ) throws{
    
}

do{
    try makeASandwich()
    // me como el sandwich
} catch{
    // tengo platos limpios... -> lavar los platos
    // tengo ingredientes... -> ir a hacer una compra
    // tengo hambre... -> esperar dentro de una hora
}


// Aserciones(debug) y precondiciones(build)
let age = -5
//assert(age>=0, "la edad de una persona no puede ser negativa")
precondition(age>=0, "la edad de una persona no puede ser negativa")
//... aquí el codigo sigue

if age > 10 {
    print("Puedes subir a la montaña rusa")
} else if age >= 0 {
    print("Eres demasiado pequeño para subir a la montaña rusa")
} else {
    assertionFailure("la edad de la persona no puede ser negativa")
}
