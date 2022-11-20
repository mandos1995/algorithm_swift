let n = Int(readLine()!)!
let s = Int(readLine()!)!
let string = readLine()!.map { $0 }

var count = 0
var i = 0
var k = 0

while i < s - 2 {
    if String(string[i...i+2]) == "IOI" {
        k += 1
        if k == n {
            count += 1
            k -= 1
        }
        i += 1
    } else {
        k = 0
    }
    i += 1
}

print(count)
