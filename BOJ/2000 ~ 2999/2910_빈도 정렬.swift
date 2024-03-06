_ = readLine()
let array = readLine()!.split(separator: " ").map { Int($0)! }
let dict = Dictionary(array.map { ($0, 1) }, uniquingKeysWith: +)
var indexs: [Int: Int] = [:]
for i in 0..<array.count {
    if indexs[array[i]] == nil {
        indexs[array[i]] = i
    }
}
array.sorted { dict[$0]! == dict[$1]! ? indexs[$0]! < indexs[$1]! : dict[$0]! > dict[$1]! }.forEach { print($0, terminator: " ") }
