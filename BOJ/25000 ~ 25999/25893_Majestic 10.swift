let t = Int(readLine()!)!
for _ in 0..<t {
    solution()
    print()
}

func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let over10ElementCount = input.filter { $0 > 9 }.count
    print(input.map { String($0) }.joined(separator: " "))
    switch over10ElementCount {
    case 3: print("triple-double")
    case 2: print("double-double")
    case 1: print("double")
    default: print("zilch")
    }
}
