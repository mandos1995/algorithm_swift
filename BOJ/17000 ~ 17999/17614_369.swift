let nums = Int(readLine()!)!
var count = 0
for num in 1...nums {
    for i in String(num) {
        if i == "3" || i == "6" || i == "9" {
            count += 1
        }
    }
}
print(count)
