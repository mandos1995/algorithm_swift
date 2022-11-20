let n = Int(readLine()!)!
var dict: [Int: Int] = [:]
let array = readLine()!.split(separator: " ").map { Int($0)! }

for arr in array {
    if dict[arr] == nil {
        dict[arr] = 1
    } else {
        dict[arr]! += 1
    }
}

let m = Int(readLine()!)!
let searchArray = readLine()!.split(separator: " ").map { Int($0)! }

for arr in searchArray {
    dict[arr] == nil ? print(0, terminator: " ") : print(dict[arr]!, terminator: " ")
}
