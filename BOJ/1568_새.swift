var n = Int(readLine()!)!
var k = 0, time = 0
while true {
    k += 1
    if n == 0 { break }
    if n < k { k = 1 }
    n -= k
    time += 1
}
print(time)
