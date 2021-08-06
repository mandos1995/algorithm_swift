var n = Int(readLine()!)!
var count = 0
if n < 11 {
    count = n
} else {
    count = 10
    for i in 11...n {
        var j = i
        var sum = 0
        while j / 10 > 0 {
            sum += j % 10
            j = j / 10
        }
        if j / 10 == 0 {
            sum += j
        }
        if i % sum == 0 {
            count += 1
        }
    }
}
print(count)
