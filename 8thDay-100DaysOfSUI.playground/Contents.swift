import UIKit

enum SqrtError: Error {
    case outOfBounds, noRoot
}

func getSquareRoot(of number: Int) throws -> Int {
    if number < 1 || number > 10000 {
        throw SqrtError.outOfBounds
    }
    
    for i in 1...10000{
        if i * i == number {
            return i
        }
    }
    throw SqrtError.noRoot
}

for _ in 0...20 {
    let randNumb = Int.random(in: 0...100)
    do {
        let sqrt = try getSquareRoot(of: randNumb)
        print("Square Root of \(randNumb) is \(sqrt)\n")
    }catch SqrtError.outOfBounds{
        print("Out of bounds: \(randNumb)\n")
    }catch SqrtError.noRoot{
        print("No Root for \(randNumb)\n")
    }catch {
        print("Something whent wrong\n")
    }
}
