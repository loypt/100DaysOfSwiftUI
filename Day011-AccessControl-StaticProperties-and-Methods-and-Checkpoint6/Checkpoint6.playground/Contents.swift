import UIKit

struct Car{
    var model: String
    var numberOfSeats: Int
    let maximumGears: Int
    private(set) var currentGear = 1
    
    init(model: String, seats: Int, maximumGears: Int) {
        self.model = model
        self.numberOfSeats = seats
        self.maximumGears = maximumGears
    }
    
    mutating func changeGear(difference: Int) {
        currentGear = currentGear + difference
        
        if currentGear < 1 {
            currentGear = 1
        } else if  currentGear > maximumGears {
            currentGear = maximumGears
        }
    }
}

var car = Car(model: "BMW X3", seats: 5, maximumGears: 8)
car.changeGear(difference: 1)
print(car.currentGear)
car.changeGear(difference: -2)
print(car.currentGear)


