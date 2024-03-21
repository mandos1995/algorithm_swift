let n = Int(readLine()!)!
var i = 1
while i * (i + 1) / 2 < n { i += 1 }
let b = n - (i - 1) * i / 2
let a = i + 1 - b
print(a, b)
