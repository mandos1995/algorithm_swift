let str = readLine()!
var count = 0
for i in str {
    switch i {
    case "a","e","i","o","u":
        count += 1
    default:
        continue
    }
}
print(count)
