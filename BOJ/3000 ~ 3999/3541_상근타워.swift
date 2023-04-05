let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var answer = Int.max
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let u = input[0], d = input[1]
    
    var start = 0
    var end = n
    
    while start <= end {
        let up = (start + end) / 2
        let down = n - up
        
        let floor = up * u - down * d
        
        if floor > 0 {
            answer = min(answer, floor)
            end = up - 1
        } else {
            start = up + 1
        }
    }
}
print(answer)
