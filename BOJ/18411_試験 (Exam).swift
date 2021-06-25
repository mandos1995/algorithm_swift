var input = readLine()!.split(separator: " ").map { Int($0)! }
input.remove(at: input.firstIndex(of: input.min()!)!)
var sum = 0
for i in 0..<input.count{
    sum += input[i]
}
print(sum)
