var a = [Int](repeating: 0, count: 46)
var b = [Int](repeating: 0, count: 46)
a[0] = 1
a[1] = 0
b[0] = 0
b[1] = 1

let n = Int(readLine()!)!

if n != 1 {
    for i in 2...n {
        a[i] = a[i - 1] + a[i - 2]
        b[i] = b[i - 1] + b[i - 2]
    }
}

print(a[n], b[n])
