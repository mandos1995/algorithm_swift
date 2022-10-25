let mon = [0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let x = input[0], y = input[1]
    if (0...23) ~= x && (0...59) ~= y {
        print("Yes",terminator: " ")
    } else {
        print("No", terminator: " ")
    }
    if (1...12) ~= x && (1...mon[x]) ~= y {
        print("Yes")
    } else {
        print("No")
    }
    
}

let n = Int(readLine()!)!

for _ in 0..<n {
    solution()
}
