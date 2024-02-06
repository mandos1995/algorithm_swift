let n = Int(readLine()!)!
var isNewGame = true
var target = -1
for _ in 0..<n {
    if isNewGame {
        isNewGame = false
        target = Int(readLine()!)!
    } else {
        let num = Int(readLine()!)!
        if num % target == 0 {
            print(num)
            isNewGame = true
        }
    }
}
