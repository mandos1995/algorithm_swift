let input = readLine()!.split(separator: " ").map { Int($0)! }
var n = input[0], man1 = input[1], man2 = input[2]
var answer = 0
while man1 != man2 {
    man1 = man1 - man1 / 2
    man2 = man2 - man2 / 2
    answer += 1
}

print(answer)
