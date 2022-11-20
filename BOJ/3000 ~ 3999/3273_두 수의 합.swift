let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: <)
let target = Int(readLine()!)!
var start = 0
var end = n - 1
var answer = 0

while start < end {
    if arr[start] + arr[end] == target {
        start += 1
        end -= 1
        answer += 1
        continue
    }
    
    if arr[start] + arr[end] < target {
        start += 1
        continue
    }
    
    if arr[start] + arr[end] > target {
        end -= 1
        continue
    }
}
print(answer)
