# Outlets

## IBOutlet & IBAction

Lorsque vous connectez votre storyboard à votre code, Xcode insère deux marqueurs spéciaux : @IBAction et @IBOutlet. Ces deux marqueurs ne font rien lorsque vous construisez votre application, mais ils sont néanmoins importants car Xcode les utilise pour comprendre quelles propriétés et méthodes sont pertinentes pour Interface Builder.

Dans le cas de @IBOutlet, il s'agit d'une connexion entre un composant de l'interface utilisateur et l'Interface Builder, par exemple un UIButton et une propriété d'un contrôleur de vue ou d'un autre élément de code Swift. À gauche du code, vous devriez voir un cercle noir entouré d'un anneau, qui est la confirmation visuelle de Xcode qu'un @IBOutlet donné a une connexion active.

```swift
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func myAction(_ sender: Any) {
        print("Hello")
    }
    
}
```
