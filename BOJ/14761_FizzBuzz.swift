let input = readLine()!.split(separator: " ").map { Int($0)! }
let x = input[0], y = input[1], z = input[2]

for i in 1...z {
    if i % x == 0 && i % y == 0 {
        print("FizzBuzz")
    } else if i % x == 0 {
        print("Fizz")
    } else if i % y == 0 {
        print("Buzz")
    } else {
        print(i)
    }
}
