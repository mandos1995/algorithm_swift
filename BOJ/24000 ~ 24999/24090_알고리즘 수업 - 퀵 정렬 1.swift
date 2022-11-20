import Foundation
let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
var k = input[1]

var array = readLine()!.split(separator: " ").map { Int($0)! }
let original = array
var swapNumber: (a: Int, b: Int) = (a: 0, b: 0)
quickSort(array: &array, p: 0, r: n - 1)

if k > 0 {
    print(-1)
} else {
    print(swapNumber.a, swapNumber.b)
}



func quickSort(array: inout [Int], p: Int, r: Int) {
    if p < r {
        let q = partition(array: &array, p: p, r: r)
        if k < 1 { return }
        quickSort(array: &array, p: p, r: q - 1)
        if k < 1 { return }
        quickSort(array: &array, p: q + 1, r: r)
        if k < 1 { return }
    }
}

func partition(array: inout [Int], p: Int, r: Int) -> Int {
    let x = array[r]
    var i = p - 1
    for j in p...r - 1 {
        if array[j] <= x {
            i += 1
            array.swapAt(i, j)
            swapNumber.a = array[i]
            swapNumber.b = array[j]
            k -= 1
            if k < 1 { return 0 }
            
        }
    }
    if i + 1 != r {
        array.swapAt(i + 1, r)
        swapNumber.a = array[i + 1]
        swapNumber.b = array[r]
        k -= 1
    }
    return i + 1
}
