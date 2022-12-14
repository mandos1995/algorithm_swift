let input = readLine()!.split(separator: " ").map { Int($0)! }
var emptyBottle = input[0] + input[1]
let change = input[2]
var answer = 0
while emptyBottle >= change {
    let newBottle = emptyBottle / change
    answer += newBottle
    emptyBottle %= change
    emptyBottle += newBottle
}

print(answer)
