let n = Int(readLine()!)!
var dict: [Character: Int] = [:]
for _ in 0..<n {
    let s = readLine()!.first!
    if dict[s] == nil {
        dict[s] = 1
    } else {
        dict[s]! += 1
    }
}
var answer = dict.filter { $0.value > 4 }.sorted { $0.key < $1.key }

if answer.isEmpty {
    print("PREDAJA")
} else {
    answer.forEach {
        print($0.key, terminator: "")
    }
}
