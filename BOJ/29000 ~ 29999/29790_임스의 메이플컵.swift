let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], u = input[1], l = input[2]

if n >= 1000 && (u >= 8000 || l >= 260) {
    print("Very Good")
} else if n >= 1000 {
    print("Good")
} else {
    print("Bad")
}

