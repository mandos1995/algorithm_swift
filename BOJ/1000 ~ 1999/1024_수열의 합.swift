let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], l = input[1]
var isSuccess = false
for i in l...100 {
    let temp = n - i * (i + 1) / 2
    
    if temp % i == 0 {
        let j = temp / i + 1
        
        if j >= 0 {
            for k in 0..<i {
                print(k + j, terminator: " ")
            }
            isSuccess = true
            break
        }
    }
}

if !isSuccess {
    print(-1)
}
