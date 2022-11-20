let t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    let n2 = n * n
    if n < 10 {
        if n == n2 % 10 {
            print("YES")
        } else {
            print("NO")
        }
    } else if n < 100 {
        if n == n2 % 100 {
            print("YES")
        } else {
            print("NO")
        }
    } else {
        if n == n2 % 1000 {
            print("YES")
        } else {
            print("NO")
        }
    }
}
