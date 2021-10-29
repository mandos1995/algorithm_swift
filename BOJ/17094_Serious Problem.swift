readLine()!
let eString = readLine()!
var countE = 0
var count2 = 0
for e in eString {
    if e == "e" {
        countE += 1
    } else if e == "2" {
        count2 += 1
    }
}
if countE == count2 {
    print("yee")
} else if countE > count2 {
    print("e")
} else {
    print("2")
}
