// YASUP for Swift 3 v1.0.0
// Copyright © Kyle Roucis 2016

import Foundation

4.times { (i) in
    print(i)
}

print("------")

6.counting(forward: { (i) in print(i) })

print("------")

6.counting(backward: { (i) in print(i) })

print("------")

let count = [ 1, 1, 2, 3, 5, 8, 13 ].count { (x) -> Bool in
    return x.isEven
}
print(count)
print("------")

"asdf sadf".forEach(word: { (s) in print(s) })

print("------")

NSSet(array: [ 1, 3, 6 ]).forEach { (x) in
    print(x)
}
