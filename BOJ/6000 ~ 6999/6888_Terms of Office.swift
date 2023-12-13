let x = Int(readLine()!)!
let y = Int(readLine()!)!
for i in stride(from: x, through: y, by: 60) {
    print("All positions change in year \(i)")
}
