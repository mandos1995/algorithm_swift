let input = readLine()!.split(separator: " ").map { Double($0)! }
let m = input[0], s = input[1], g = input[2]
let input2 = readLine()!.split(separator: " ").map { Double($0)! }
let a = input2[0], b = input2[1]
let input3 = readLine()!.split(separator: " ").map { Double($0)! }
let l = input3[0], r = input3[1]

if (l / a + m / g ) > (r / b + m / s) {
    print("latmask")
} else {
    print("friskus")
}
