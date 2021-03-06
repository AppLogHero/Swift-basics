# Les basiques

## Constantes et Variables

### Variables
Pour créer une variable il suffit d'utiliser le mot clé `var`
```swift
var ma variable = "Swift"
```
le typage des variables est optionnel mais il peut être précisé
```swift
var ma variable: String = "Swift"
```

### Constantes
Pour créer une constante il suffit d'utiliser le mot clé `let`, de même que pour les variables, le typage est optionnel.
```swift
let maConstante = "Swift"
let maConstante2: String = "Swift2"
```
## Listes et Dictionnaires

### Listes
Pour créer une liste, rien de plus simple
```swift
var maListe = [1, 2, 3, 4, 5]
var maListe2: [Int] = [6, 7, 8, 9, 10]
///Lite vide
var listVide: [Int] = []
```

### Dictionnaires
Pour créer un dictionnaire, même principe
```swift
var monDict = [
    0: "Swift1",
    1: "Swift2",
    2: "Swift3"
]

var monDict2 = [
    "lundi": "Cours+TP",
    "mardi": "Cours+TP",
    "mercredi": "Projet",
    "jeudi": "Projet",
    "vendredi": "Rendu+Sountenance"
]

var monDictVide = [:]
```

## Boucles et Conditions

### `if` et `switch`

#### `if`
```swift

let a = 1
let b = 2

if a > b {
    return true
} else {
    return false
}

//Vérifier qu'une valeur n'est pas `nil` (null)
var total: Int? = nil

if let total = total {
    ...
} else {
    ...
}
```

#### `switch`
```swift
var count = 3

switch count {
case 1:
    ...
case 2:
    ...
case 3:
    ...
default:
    ...
}
```

### `for` et `while`

#### `for`
```swift

let days = ["lundi", "mardi", "mercredi", "jeudi", "vendredi"]

for day in days {
    print("jour: \(day)")
}

days.forEach { day in 
    print("jour: \(day)")
}

for i in 0...5 {
    ...
}
```

#### `while`
```swift
var n = 2
while n < 100 {
    n *= 2
}

var m = 2
repeat {
    m *= 2
} while m < 100
```

## Fonctions

Pour créer une fonction il suffit d'utiliser le mot clé `func` et le symbole `->` suivi d'un type de retour si nécéssaire
```swift
func returnVoid() {
    print("Void")
}

func returnOne() -> Int {
    return 1
}

func addOne(number: Int) -> Int {
    return number + 1
}

//retourner un tuple
func returnTwoNumber() -> (numberOne: Int, numberTwo: Int) {
    return (23, 45)
}
```

## Objets et Classes

Pour créer un classe il suffit d'utiliser le mot clé `class`. Une classe peut contenir des propriétés (`var`,`let`) mais également des fonctions à la différence que, ces éléments dépenderont du contexte de la classe
```swift
//Déclaration
class Car {
    let numberOfWheels = 4
    let brand: String
    
    init(brand: String) {
        self.brand = brand
    }
    
    func whatIsTheBrand() -> String {
        return "The brand is :\(brand)"
    }
}

//Appel
let honda = Car(brand: "Honda")
let whatIsTheBrand = honda.whatIsTheBrand()
```

### Héritage
Une classe peut hériter d'une autre classe. Elle peut également surcharger ses fonctions
```swift
class Mustang: Car {
    
    let carBrand = "Mustang"
    
    init() {
        super.init(brand: carBrand)
    }
    
    override func whatIsTheBrand() -> String {
        return "The brand is :\(brand)"
    }
    
}
```

## Structures et Enumérations

### Enumérations
Pour créer une énumération il faut utiliser le mot clé `enum`. Comme pour les `class` les énumérations peuvent contenir des méthodes
```swift
enum AverageBudget {
    case low
    case medium
    case high
    
    func budgetInEuro() -> String {
        switch self {
        case .low:
            return "€"
        case .medium:
            return "€€"
        case .high:
            return "€€€"
        }
    }
}
```

### Structures
Utilisez struct pour créer une structure. Les structures supportent plusieurs des mêmes comportements que les classes, y compris les méthodes et les initialisateurs. L'une des différences les plus importantes entre les structures et les classes est que les structures sont toujours copiées lorsqu'elles sont transmises dans votre code, alors que les classes sont transmises par référence.
```swift
struct Ipad {
    let UUID: String
    let model: String
    let osVerion: String
    
    init(UUID: String, model: String, osVerion: String) {
        self.UUID = UUID
        self.model = model
        self.osVerion = osVerion
    }
}
```
## Protocoles et Extensions

### Protocols
les `protocol` en swift peuvent être considérés comme un interface en java. Les classes, les énumérations et les structures peuvent toutes adopter des protocoles.
```swift
protocol CarProtocol {
    var brand: String { get set }
    var model: String { get set }
    var serialNumber: String { get }
    
    func fetchKilometers() -> Double
}
```
### Extensions
les extensions parmettent d'ajouter des fonctionnalités à un type existant
```swift
extension Ipad {

    func simpleDescription() -> String {
        return "UUID: \(UUID), model: \(model), osVerion: \(osVersion)"
    } 

}
```

## map, compactMap, reduce, filter, sort
Les fonctions ci-dessus sont toutes utiles pour les collections (liste / dictionnaire) 

### map
map est une fonction qui peut correspondre au fonctionnement d'un foreach
```swift
let values = [0, 1, 2, 3]
values.map { value in
    print(value) //0 1 2...
}
```

### compactMap
compactMap est le même principe que map à la différence qu'il filtrera les valeurs `nil` et fera en sorte d'`unwrap` les valeurs optionelles
```swift
let values: [Int?] = [0, 1, 2, nil, 4]
values.flatMap { values in
    print(value) //0 1 2 4
}
```

###reduce
reduce permet de prendre tous les élements d'une liste est d'effectuer des opérations
```swift
let values = [0, 1, 2, 3]
let sum = values.reduce(0, +) //6
let product = value.reduce(0, *) //0
```

### sort
sort permet de trier les valeurs d'une liste
```swift
let values = [0, 3, 34, 2, 345]
values.sorted()
values.sorted { value1, value2 in
    return value1 > value 2 //[0, 2, 3, 34, 345]
}
```

### filter
filter permet de filtrer une liste en fonction d'une condition
```swift
let values = [23, 45, 3, 567, 6]
values.filter { value in
    return value < 10 // 3, 6
}
```
