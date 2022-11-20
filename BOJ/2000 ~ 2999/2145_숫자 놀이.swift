while true {
    var num = readLine()!
    var sum = 0
    if num == "0" {
        break
    }
    while true {
        if num.count == 1 {
            print(num)
            break
        } else {
            for i in num {
               sum += Int(String(i))!
            }
            
        }
        num = String(sum)
        sum = 0
    }
        
}
