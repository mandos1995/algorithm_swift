let t = Int(readLine()!)!

for i in 1...t {
    let input = readLine()!.split(separator: " ").map { Int($0)! }.sorted { $0 < $1 }
    let a = input[0], b = input[1], c = input[2]
    if a == b && b == c {
        print("Case #\(i): equilateral")
    } else if (a == b || b == c) && a + b > c {
        print("Case #\(i): isosceles")
    } else if a + b > c {
        print("Case #\(i): scalene")
    } else {
        print("Case #\(i): invalid!")
    }
}
