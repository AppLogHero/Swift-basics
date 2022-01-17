# URLSession, URLRequest et Codable

## Codable
Codable est un alias pour les protocoles Encodable et Decodable. Ces deux protocoles servent respectivement à encoder un objet en type `Data` et à décoder un objet `Data` afin de l'interpréter
```swift
struct Vaccin: Codable {
    let date: String
    let name: String
}
```

## URLRequest
URLRequest est une structure qui encapsule deux propriétés essentielles d'une requête HTTP: l'URL à charger et les politiques utilisées pour la charger. En outre, pour les demandes HTTP et HTTPS, URLRequest inclut la méthode HTTP (GET, POST, etc.) et les en-têtes HTTP.
```swift
var urlComponent = URLComponents(string: "https://www.myapi.com")
urlComponent?.queryItems = [
    URLQueryItem(name: "page", value: "1")
]

var request = URLResquest(url: urlComponent.url)

//Method
request.httpMethod = "GET" //PUT, POST, DELETE, PATCH
//Header
request.addValue("application/json", forHTTPHeaderField: "Content-Type")
//Body
do {
    let data = try JSONEncoder().encode(myObject)
    request.httpBody = data
} catch let error {
    //error ..
}
```

## URLSession
La classe URLSession fournit une API pour télécharger des données depuis et vers des APIs. Vous pouvez également utiliser cette API pour effectuer des téléchargements en arrière-plan lorsque votre application n'est pas en cours d'exécution ou, sous iOS, lorsque votre application est suspendue. URLSession possède une session partagée via un `singleton` pour les demandes de base.
Au sein d'une session, vous pouvez créer des tâches qui, en option, téléchargent des données vers un serveur, puis les récupèrent à partir du serveur, soit sous forme de fichier sur disque, soit sous forme d'un ou plusieurs objets `NSData (Data)` en mémoire. L'API URLSession propose quatre types de tâches :

* `Data tasks` envoient et reçoient des données à l'aide d'objets NSData.

* `Upload tasks` sont similaires aux `Data tasks`, mais elles envoient également des données (souvent sous la forme d'un fichier) et prennent en charge les téléchargements en arrière-plan lorsque l'application n'est pas en cours d'exécution.

* `Download tasks` récupèrent des données sous la forme d'un fichier et prennent en charge les téléchargements mais également les téléchargements en arrière-plan lorsque l'application n'est pas en cours d'exécution.

* `WebSocket tasks` échangent des messages via TCP et TLS, en utilisant le protocole WebSocket défini dans la RFC 6455.
```swift
let request = URLRequest(...)
URLSession.shared.dataTask(with: request) { data, urlResponse, error in
    if let error = error {
        //error
    } else {
        if let urlResponse = urlResponse as? HTTPURLResponse, let data = data {
            switch urlResponse.statusCode {
            case 200:
                do {
                    let results = try JSONDecoder().decode(Vaccin.self, from: data)
                } catch let error {
                    //error
                }
            case 404:
                // do anything
            case 500:
                // do anything
            default:
                // do anything
            }
        }
    }
}
```

 
