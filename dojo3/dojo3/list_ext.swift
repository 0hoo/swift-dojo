import Foundation
let list = [1,2,3,4,5]

enum Structure<T>{
    case Cons( T, Array<T> )
    case Empty
}
extension Array {
    func toCons() -> Structure<T> {
        switch (count) {
        case 0: return Structure.Empty
        case 1: return Structure.Cons(head, [])
        default: return Structure.Cons(head, tail)
        }
    }
    var tail : Array<T> {
        var t = Array<T>()
        for x in self[1..<count] { t.append(x) }
        return t
    }
    var head : T { return self[0] }
}

func sum(l : Array<Int>) -> Int {
    switch l.toCons() {
        case let .Cons(head, tail): return head + sum(tail)
        case .Empty: return 0
    }
}

func mainTravesal() {
    println(sum(list))  //Output: 15
}
