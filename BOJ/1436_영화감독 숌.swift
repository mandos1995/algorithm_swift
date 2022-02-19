let n = Int(readLine()!)!
var index = 0
var num = 666
while true {
    let numArray = "\(num)".map { String($0) }
    
    for i in 0..<numArray.count - 2 {
        if numArray[i] == "6" && numArray[i + 1] == "6" && numArray[i + 2] == "6" {
            index += 1
            break
        }
    }
    if n == index {
        print(num)
        break
    }
    num += 1

}
