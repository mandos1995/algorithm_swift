let n = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map { Int(String($0))! }
input.sort()
var score = 0
var size = input[0]
for i in 1..<n {
    score += size * input[i]
    size = size + input[i]
    
}
print(score)
