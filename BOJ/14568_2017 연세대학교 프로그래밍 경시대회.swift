let candy = Int(readLine()!)!
var count = 0

for i in stride(from: 2, to: candy, by: 2) {
    count += (candy - i - 2) / 2
}
print(count)
