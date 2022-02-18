let n = Int(readLine()!)!
var step = 6
var i = 1
var start = 1
while start < n {
    step = 6 * i
    start += step
    i += 1
}
print(i)
