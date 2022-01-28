import UIKit

class Animal {
    let numOfLegs: Int
    
    init(legCount: Int){
        numOfLegs = legCount
    }
    
    func speak() {
    }
}
class Dog: Animal {
    override func speak(){
        print("Woof")
    }
}
class Cat: Animal {
    let isTame: Bool
    
    override func speak(){
        print("Meow")
    }

    init(legCount: Int, isTame: Bool){
        self.isTame = isTame
        super.init(legCount: legCount)
    }
}

final class Corgi: Dog {
    override func speak() {
        print("Woof Woof")
    }
}

final class Poddle: Dog {
    override func speak() {
        print("Bark Bark")
    }
}

final class Persian: Cat {
    init(legCount: Int) {
        super.init(legCount: legCount, isTame: true)
    }
    override func speak() {
        print("Meow Meow")
    }
}

final class Lion: Cat {
    init(legCount: Int) {
        super.init(legCount: legCount, isTame: false)
    }
    override func speak() {
        print("Roar!")
    }
}
