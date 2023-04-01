let n = Int(readLine()!)!
var dance: Set<String> = ["ChongChong"]

for _ in 0..<n {
    let names = readLine()!.split(separator: " ").map { String($0) }
    if dance.contains(names[0]) || dance.contains(names[1]) {
        dance.insert(names[0])
        dance.insert(names[1])
    }
}

print(dance.count)
