func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a % b)
    }
}

let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map {Int(String($0))!}
for i in 1..<n {
    print("\(input[0] / gcd(input[0], input[i]))/\(input[i] / gcd(input[0], input[i]))")
}
