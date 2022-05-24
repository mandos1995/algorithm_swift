let n = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }
let setArray = Array(Set(array)).sorted(by: <)
var dict: [Int: Int] = [:]
for (index, arr) in setArray.enumerated() {
    dict[arr] = index
}

for arr in array {
    print(dict[arr]!, terminator: " ")
}
