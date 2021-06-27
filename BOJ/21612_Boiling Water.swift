let num = Int(readLine()!)!
let result = num * 5 - 400
print(result)
if result > 100 {
    print(-1)
} else if result < 100 {
    print(1)
} else {
    print(0)
}
