func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    }
    return gcd(b, a % b)
}

let input1 = readLine()!.split(separator: " ").map { Int($0)! }
let top1 = input1[0], bottom1 = input1[1]
let input2 = readLine()!.split(separator: " ").map { Int($0)! }
let top2 = input2[0], bottom2 = input2[1]

let bottom = bottom1 * bottom2
let top = top1 *  bottom2 + top2 * bottom1

let div = gcd(top, bottom)
print(top / div, bottom / div)
