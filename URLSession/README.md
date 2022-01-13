# URLSession, URLRequest et Codable

## Codable
Codable est un alias pour les protocoles Encodable et Decodable. Ces de protocoles ervent repectivement à encoder un objet en type `Data` et à décoder un objet `Data` afin de l'interpréter
```swift
struct Vaccin: Codable {
    let date: String
    let name: String
}
``

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
 
