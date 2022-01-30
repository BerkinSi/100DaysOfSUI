import UIKit

//MARK: Protocols

protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}


struct Bicycle: Vehicle {
    let name = "Bicycle"
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }

    func travel(distance: Int) {
        print("I'm cycling \(distance)km.")
    }
}

struct Car: Vehicle {
    let name = "Car"
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }

    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }

    func openSunroof() {
        print("It's a nice day!")
    }
}

let bike = Bicycle()
commute(distance: 50, using: bike)

let car = Car()
commute(distance: 100, using: car)

getTravelEstimates(using: [car, bike], distance: 150)


//MARK: Opaque Return Types

func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

print(getRandomNumber() == getRandomNumber())
//print(getRandomNumber() == getRandomBool())


//MARK: Extensions

var quote = "   The truth is rarely pure and never simple   "

let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)
print(trimmed)

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

let trimmed2 = quote.trimmed()


struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
}
extension Book {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}

let lotr = Book(title: "Lord of the Rings", pageCount: 1178, readingHours: 24)
let cAndP = Book(title: "Crime and Punishment", pageCount: 576)


//MARK: Challange


/*
 Make a protocol that describes a building, adding various properties and methods, then create two structs, House and Office, that conform to it. Your protocol should require the following:

 A property storing how many rooms it has.
 A property storing the cost as an integer (e.g. 500,000 for a building costing $500,000.)
 A property storing the name of the estate agent responsible for selling the building.
 A method for printing the sales summary of the building, describing what it is along with its other properties.

 */

protocol Building {
    var numberOfRooms: Int { get }
    var cost: Int { get set }
    var reaName: String { get set }
    func printSummary()
    var type: String { get }
}

struct House: Building {
    let type = "house"
    
    let numberOfRooms: Int
    
    var cost: Int
    
    var reaName: String
    
    var numberOfBeds: Int
}

struct Office: Building {
    let type = "office"

    let numberOfRooms: Int
    
    var cost: Int
    
    var reaName: String
    
    var hasParkingLot: Bool
}

extension Building {
    func printSummary() {
        print("Talk to \(reaName) to buy this \(type) for $\(cost).")
    }
}

let myHome = House(numberOfRooms: 3, cost: 3_000_000, reaName: "DK", numberOfBeds: 4)
let myOffice = Office(numberOfRooms: 2, cost: 7_000_000, reaName: "KK", hasParkingLot: true)

myHome.printSummary()
myOffice.printSummary()
