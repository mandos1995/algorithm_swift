let n = Int(readLine()!)!
let str = readLine()!.map { String($0) }
var i = 0
var count = 0
while i + 3 < n {
    let word = "\(str[i])\(str[i + 1])\(str[i + 2])\(str[i + 3])"
    if word == "pPAp" {
        count += 1
        i += 4
    } else {
        i += 1
    }
    
}
print(count)
