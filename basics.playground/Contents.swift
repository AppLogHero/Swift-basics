import UIKit

var greeting = "Hello, playground"

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

class Mustang: Car {
    
    let carBrand = "Mustang"
    
    init() {
        super.init(brand: carBrand)
    }
    
    override func whatIsTheBrand() -> String {
        return "The brand is :\(brand)"
    }
    
}
