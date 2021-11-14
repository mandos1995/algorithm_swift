import CoreFoundation
var n = readLine()!
var result = 0
var cnt = 0
if n.count > 1 {
    for num in n {
        result += Int(String(num))!
    }
    cnt += 1
} else {
    result = Int(n)!
}
while String(result).count > 1 {
    var newNum = 0
    for num in String(result) {
        newNum += Int(String(num))!
    }
    cnt += 1
    result = newNum
    newNum = 0
}
if String(result).count == 1 {
    print(cnt)
    (result % 3 == 0) ? print("YES") : print("NO")
}
