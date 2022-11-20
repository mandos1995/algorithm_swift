let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0], b = input[1], c = input[2]

func power(a: Int, b: Int) -> Int {
    if b == 0 {
        return 1
    } else if b == 1 {
        return a
    }
    if b % 2 == 1 {
        return power(a: a, b: b - 1) * a
    }
    var half = power(a: a, b: b / 2)
    half %= c
    return (half * half) % c
}

print(power(a: a, b: b) % c)
