let caseNum = readLine()!.split(separator: " ").map { Int($0)! }
var success: [Bool] = [true, true]
for _ in 0..<caseNum[0] {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    if input[0] != input[1] {
        success[0] = false
    }
}

for _ in 0..<caseNum[1] {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    if input[0] != input[1] {
        success[1] = false
    }
}

if success[0] && success[1] {
    print("Accepted")
} else if success[0] {
    print("Why Wrong!!!")
} else {
    print("Wrong Answer")
}
