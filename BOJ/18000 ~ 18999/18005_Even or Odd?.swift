import Foundation
let inputNum = Int(readLine()!)!
if inputNum % 2 == 1 {
    print(0)
} else {
    if (inputNum / 2) % 2 == 0{
        print(2)
    } else {
        print(1)
    }
}
