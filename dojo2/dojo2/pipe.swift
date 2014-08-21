infix operator |>   { precedence 50 associativity left }

// Pipe forward: transforms "x |> f" to "f(x)" and "x |> f |> g |> h" to "h(g(f(x)))"
public func |> <T,U>(lhs: T, rhs: T -> U) -> U {
    return rhs(lhs)
}

func pipe() {
    
    func imperative(list:[Int]) -> [Int] {
        var results:[Int] = []
        for i in list {
            if i > 7 {
                break
            }
            if i < 2 {
                results.append(4 * i)
            }
        }
        return results
    }
    
    println("\(imperative([0,1,2,3,4]))")

    
    func functional(list:[Int]) -> [Int] {
        return map(filter(takeWhile(list, { $0 < 7}), { $0 < 2 }), { 4 * $0 })
    }
    
    println("\(functional([0,1,2,3,4]))")
    

    var f1 = bind2nd(imap, { $0 * 4 })
    var f2 = bind2nd(ifilter, { $0 < 2 })
    var f3 = bind2nd(takeWhile, { $0 < 7 })
    var f4 = compose(compose(f1, f2), f3)
    println("F4")
    println("\(f4([0,1,2,3,4]))")
    
    var r0 = [0,8,1,2,3,4] |> f3 |> f2 |> f1
    println("\(r0)")

    var r1 = [0,8,1,2,3,4] |> bind2nd(takeWhile, { $0 < 7 }) |> bind2nd(ifilter, { $0 < 2 }) |> bind2nd(imap, { $0 * 4 })
    println("\(r0)")

    func takeWhile2(condition: (Int) -> Bool)(list:[Int]) -> [Int] {
        
        var lastTrue = -1
        
        for (index, value) in enumerate(list) {
            if condition(value) {
                lastTrue = index
            } else {
                break
            }
        }
        return list.take(lastTrue + 1)
    }
    
    func ifilter2(condition: (Int) -> Bool)(list:[Int]) -> [Int] {
        return list.filter(condition)
    }
    
    func imap2(manipulator: (Int) -> Int)(list:[Int]) -> [Int] {
        return list.map(manipulator)
    }

    var r2 = [0, 1, 2, 3, 4] |> takeWhile2 { $0 < 7 } |> ifilter2 { $0 < 2 } |> imap2 { $0 * 4}
    println("\(r2)")
}