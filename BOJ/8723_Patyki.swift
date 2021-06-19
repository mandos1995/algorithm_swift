var input = readLine()!.split(separator: " ").map { Int($0)! }
input = input.sorted()
let a = input[0]
let b = input[1]
let c = input[2]

if c * c == (a * a) + (b * b){
    print(1)
} else if a == b && b == c {
    print(2)
} else {
    print(0)
}
