let input = readLine()!.split(separator: " ").map { Int($0)! }
let input2 = readLine()!.split(separator: " ").map { Int($0)! }

let t1 = input[0]
let v1 = input[1]
let t2 = input2[0]
let v2 = input2[1]

if t2 < 0 && v2 >= 10 {
    print("A storm warning for tomorrow! Be careful and stay home if possible!")
} else if t2 < t1 {
    print("MCHS warns! Low temperature is expected tomorrow.")
} else if v2 > v1 {
    print("MCHS warns! Strong wind is expected tomorrow.")
} else {
    print("No message")
}
