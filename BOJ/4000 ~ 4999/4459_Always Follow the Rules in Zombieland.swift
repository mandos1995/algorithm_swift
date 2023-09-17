var dict: [Int: String] = [:]
let n = Int(readLine()!)!
for i in 1...n {
    dict[i] = readLine()!
}
let t = Int(readLine()!)!
for _ in 0..<t {
    let num = Int(readLine()!)!
    print("Rule \(num): \(dict[num, default: "No such rule"])")
}
