let n = Int(readLine()!)!
let set: Set<Int> = Set(readLine()!.split(separator: " ").map { Int($0)! })
let m = Int(readLine()!)!
let elements = readLine()!.split(separator: " ").map { Int($0)! }
elements.forEach {
    set.contains($0) ? print(1) : print(0)
}
