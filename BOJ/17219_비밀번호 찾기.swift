let input = readLine()!.split(separator: " ").map { Int($0)! }
var web: [String: String] = [:]

for _ in 0..<input[0] {
    let input = readLine()!.split(separator: " ").map { String($0) }
    web[input[0]] = input[1]
}
for _ in 0..<input[1] {
    print(web[readLine()!]!)
}
