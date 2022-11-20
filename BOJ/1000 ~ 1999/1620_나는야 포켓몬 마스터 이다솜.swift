let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], commandN = input[1]
var stringKeyDictionary: [String: Int] = [:]
var intKeyDictionary: [Int: String] = [:]
for i in 1...n {
    let name = readLine()!
    stringKeyDictionary[name] = i
    intKeyDictionary[i] = name
}

for _ in 0..<commandN {
    let command = readLine()!
    if let c = Int(command) {
        print(intKeyDictionary[c]!)
    } else {
        print(stringKeyDictionary[command]!)
    }
}
