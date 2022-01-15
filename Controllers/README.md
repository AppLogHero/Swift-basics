# Controllers

## UIViewController

La classe `UIViewController` définit le comportement partagé qui est commun à tous les contrôleurs de vue.
Les principales responsabilités d'un contrôleur de vues sont les suivantes :
* Mettre à jour le contenu des vues, généralement en réponse à des modifications des données sous-jacentes.
* Répondre aux interactions des utilisateurs avec les vues.
* Redimensionner les vues et gérer la disposition de l'interface globale.
* Coordination avec d'autres objets - y compris d'autres contrôleurs de vues - dans votre application.

### Cycle de vie
![LifeCycle](Images/LifeCycle.png)
```swift
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }

}
```




