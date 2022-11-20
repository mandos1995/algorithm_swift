let n = Int(readLine()!)!
for _ in 0..<n {
    solution()
}

func solution() {
    let team = readLine()!.split(separator: " ").map { Int($0)! }
    team.forEach { print($0, terminator: " ")}
    print()
    if team.contains(17) && team.contains(18) {
        print("both")
    } else if team.contains(17) {
        print("zack")
    } else if team.contains(18) {
        print("mack")
    } else {
        print("none")
    }
    print()
}
