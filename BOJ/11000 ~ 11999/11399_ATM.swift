let n = readLine()!
var input = readLine()!.split(separator: " ").map { Int($0)! }
input.sort()
var mintime = 0
var time = [Int]()
for i in 0..<input.count{
    mintime += input[i] + sum(numbers: time)
    time.append(input[i])
}

func sum(numbers: [Int]) -> Int{
    return numbers.reduce(0, +)
}
print(mintime)
