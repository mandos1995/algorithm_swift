readLine()!
let str = readLine()!
var countA = 0
var countB = 0

for chr in str {
    if chr == "A" {
        countA += 1
    } else {
        countB += 1
    }
}

if countA > countB {
    print("A")
} else if countB > countA {
    print("B")
} else {
    print("Tie")
}
