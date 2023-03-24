let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
var array = readLine()!.split(separator: ",").map { Int($0)! }

func makeArray(_ array: [Int]) -> [Int] {
    var answer: [Int] = []
    
    for i in 0..<array.count - 1 {
        answer.append(array[i + 1] - array[i])
    }
    return answer
}

for _ in 0..<k {
    array = makeArray(array)
}

print(array.map { String($0) }.joined(separator: ","))
