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

## UITableViewController

La class `UITableViewController` hérite directement de `UIViewController`. Cette classe permet de créer un controleur de vue au format d'une liste scrollable. Le `UITableViewController` implémente également deux protocole, `UITableViewDelegate` et `UITableViewDataSource`. Le protocole `UITableViewDataSource` de gérer les données et de fournir des cellules pour la vue. Le protocol `UITableViewDelegate`permet la gestion des sélections, la configuration des `Headers` et `Footers`, la suppression et de réorganisation des cellules, et l'exécution d'autres actions dans la vue.

![tableView](Images/tableView.png)

```swift
import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }

    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }

    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }

    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }

}
```


