let a = readLine()!.map { $0 }
let b = readLine()!.map { $0 }
var and = ""
var or = ""
var xor = ""
var notA = ""
var notB = ""
for i in 0..<100_000 {
    // AND
    if a[i] == "1" && b[i] == "1" {
        and += "1"
    } else {
        and += "0"
    }
    
    if a[i] == "1" || b[i] == "1" {
        or += "1"
    } else {
        or += "0"
    }
    
    if a[i] != b[i] {
        xor += "1"
    } else {
        xor += "0"
    }
    notA += a[i] == "1" ? "0" : "1"
    notB += b[i] == "1" ? "0" : "1"
}
print(and)
print(or)
print(xor)
print(notA)
print(notB)
