let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]

var nameDict: [String: [String]] = [:]
var groupDict: [String: String] = [:]

for _ in 0..<n {
    let group = readLine()!
    let k = Int(readLine()!)!
    var member: [String] = []
    for _ in 0..<k {
        let name = readLine()!
        groupDict[name] = group
        member.append(name)
    }
    nameDict[group] = member
}

for _ in 0..<m {
    let command = readLine()!
    let isName = Int(readLine()!)! == 0
    if isName {
        nameDict[command]!.sorted { $0 < $1 }.forEach { print($0) }
    } else {
        print(groupDict[command]!)
    }
}
