let input = readLine()!
var count = 0
var inputCount = input.count
for i in input {
    print(i, terminator: "")
    count += 1
    if count % 10 == 0 {
        print()
    }
}
print()
