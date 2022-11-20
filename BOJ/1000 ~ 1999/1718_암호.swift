let plain = readLine()!
var passwordKey = readLine()!

while passwordKey.count < plain.count {
    passwordKey += passwordKey
}

let plainArray = plain.map { $0 }
let passwordKeyArray = passwordKey.map { $0 }

for i in 0..<plainArray.count {
    if plainArray[i] == " " {
        print(" ", terminator: "")
        continue
    }
    let step = passwordKeyArray[i].asciiValue! - 96
    var newWordAsciiValue = plainArray[i].asciiValue! - step
    if newWordAsciiValue < 97 {
        newWordAsciiValue += 26
    }
    print(UnicodeScalar(newWordAsciiValue), terminator: "")
}
