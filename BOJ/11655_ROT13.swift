import Foundation
let input = readLine()!

for i in input {
    if (97 <= i.asciiValue! && i.asciiValue! <= 109) || (65 <= i.asciiValue! && i.asciiValue! <= 77) {
        print(UnicodeScalar(i.asciiValue! + 13),terminator: "")
    } else if (109 <= i.asciiValue! && i.asciiValue! <= 122) || (77 <= i.asciiValue! && i.asciiValue! <= 90) {
        print(UnicodeScalar(i.asciiValue! - 13),terminator: "")
    } else {
        print(i, terminator: "")
    }

}
