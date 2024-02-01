let h = Int(readLine()!)!
let m = Int(readLine()!)!
var t = 1

while t <= m {
    let answer = ((-6) * t * t * t * t) + (h * t * t * t) + (2 * t * t) + t
    
    if answer <= 0 {
        print("The balloon first touches ground at hour:", t)
        exit(0)
    }
    t += 1
}
print("The balloon does not touch ground in the given time.")
