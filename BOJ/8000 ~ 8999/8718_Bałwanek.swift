let input = readLine()!.split(separator: " ").map { Int($0)! }
let x = input[0]
let k = input[1]

if k * 7 <= x {
    print(k * 7000)
} else if Double(k) * 3.5 <= Double(x) {
    print(k * 3500)
} else if Double(k) * 1.75 <= Double(x){
    print(k * 1750)
} else {
    print(0)
}
