var x = Int(readLine()!)!
let sticks = [64, 32, 16, 8, 4, 2, 1]
var count = 0
var stick = 0
while x != 0{
    for i in sticks {
        if x >= i {
            x -= i
            count += 1
            if x == 0 {
                break
            }
        }
        
    }
}
print(count)
