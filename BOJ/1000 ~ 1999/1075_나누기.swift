let n = Int(readLine()!)!
let f = Int(readLine()!)!
var newN = n / 100 * 100

if newN % f == 0 {
    print("00")
} else {
    for i in 1...100 {
        newN += 1
        if newN % f == 0 {
            if String(i).count == 1 {
                print("0\(i)")
                break
            } else if String(i).count == 2 {
                print(i)
                break
            }
        }
    }
}
