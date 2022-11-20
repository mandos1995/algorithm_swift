import Foundation
var phoneNum = [Int]()
for _ in 0..<4 {
    phoneNum.append(Int(readLine()!)!)
}
if phoneNum[0] == 8 || phoneNum[0] == 9{
    if phoneNum[1] == phoneNum[2] {
        if phoneNum[3] == 8 || phoneNum[3] == 9{
            print("ignore")
        } else {
            print("answer")
        }
    } else {
        print("answer")
    }
    
} else {
    print("answer")
}
