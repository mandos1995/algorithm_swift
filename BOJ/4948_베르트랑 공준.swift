var isSuccess = [Bool](repeating: true, count: 246913)
isSuccess[1] = false
for i in 2...246912 {
    if isSuccess[i] {
        var j = 2
        while i * j <= 246912 {
            isSuccess[i * j] = false
            j += 1
        }
    }
}
while true {
    let n = Int(readLine()!)!
    if n == 0 {
        break
    }
    
    var count = 0
    for i in n + 1...2 * n {
        if isSuccess[i] {
            count += 1
        }
    }
    print(count)
}
