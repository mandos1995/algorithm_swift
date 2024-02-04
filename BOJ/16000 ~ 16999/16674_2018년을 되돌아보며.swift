var dict: [Int: Int] = [2:0, 0:0, 1:0, 8:0]
let s = readLine()!.map { Int(String($0))! }
var isNot = false
for s in s {
    if dict[s] == nil {
        isNot = true
    } else {
        dict[s]! += 1
    }
}

var set = Set(dict.values)

if isNot {
    print(0)
} else {
    if set.contains(0) {
        print(1)
    } else if set.count == 1 {
        print(8)
    } else {
        print(2)
    }
}
