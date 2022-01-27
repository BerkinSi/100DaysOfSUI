import UIKit

enum GearError: Error {
    case noMoreUp, noMoreDown
}

struct Car {
    private let model: String
    private let numberOfSeats: Int
    private(set) var currentGear: Int = 0
    private let maxGear: Int
    
    init(model: String, numberOfSeats: Int, maxGear: Int){
        self.model = model
        self.numberOfSeats = numberOfSeats
        self.maxGear = maxGear
    }
    
    public mutating func changeGear(isUp: Bool) {
        if isUp {
            do {
                try handleGearUp()
            }catch GearError.noMoreUp{
                print("No more up gears")
            }catch {
                print("This is unexpected")
            }
        }else {
            do {
                try handleGearDown()
            }catch GearError.noMoreDown{
                print("Car has stopped!")
            }catch {
                print("This is unexpected")
            }
        }
    }
    
    private mutating func handleGearUp() throws {
        if  currentGear == maxGear {
            throw GearError.noMoreUp
        }else {
            currentGear += 1
        }
    }
    
    private mutating func handleGearDown() throws {
        if  currentGear == 0 {
            throw GearError.noMoreDown
        }else {
            currentGear -= 1
        }
    }
}


var myCar = Car(model: "Ibiza", numberOfSeats: 4, maxGear: 7)
print("Current gear is: \(myCar.currentGear)")
myCar.changeGear(isUp: true)
print("Current gear is: \(myCar.currentGear)")
myCar.changeGear(isUp: true)
print("Current gear is: \(myCar.currentGear)")
myCar.changeGear(isUp: true)
print("Current gear is: \(myCar.currentGear)")
myCar.changeGear(isUp: false)
print("Current gear is: \(myCar.currentGear)")
myCar.changeGear(isUp: true)
myCar.changeGear(isUp: true)
myCar.changeGear(isUp: true)
myCar.changeGear(isUp: true)
print("Current gear is: \(myCar.currentGear)")
myCar.changeGear(isUp: true)
print("Current gear is: \(myCar.currentGear)")
myCar.changeGear(isUp: true)
print("Current gear is: \(myCar.currentGear)")
myCar.changeGear(isUp: false)
print("Current gear is: \(myCar.currentGear)")
myCar.changeGear(isUp: false)
myCar.changeGear(isUp: false)
myCar.changeGear(isUp: false)
myCar.changeGear(isUp: false)
myCar.changeGear(isUp: false)
print("Current gear is: \(myCar.currentGear)")
myCar.changeGear(isUp: false)
print("Current gear is: \(myCar.currentGear)")
myCar.changeGear(isUp: false)
print("Current gear is: \(myCar.currentGear)")
