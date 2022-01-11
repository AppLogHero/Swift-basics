# Les basiques

## Constantes et Variables

### Variables
Pour créer une variable il suffit d'utiliser le mot-clé `var`
```swift
var ma variable = "Swift"
```
le typage des variable est optionnel mais il peut être préciser
```swift
var ma variable: String = "Swift"
```

### Constantes
Pour créer une constante il suffit d'utiliser le mot-clé `let`, de même que pour les variables, le typage est optionnel.
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


