let input = readLine()!.split(separator: " ").map { Int($0)! }
let aCount = input[0], bCount = input[1]
let setA = Set(readLine()!.split(separator: " ").map { Int($0)! })
let setB = Set(readLine()!.split(separator: " ").map { Int($0)! })

let result = Array(setA.subtracting(setB)).sorted(by: <)
print(result.count)
result.forEach {
    print($0, terminator: " ")
}
