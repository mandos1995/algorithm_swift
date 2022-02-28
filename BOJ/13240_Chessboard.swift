let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]

for i in 0..<n {
    for j in 0..<m {
        if i % 2 == 0 {
            if j % 2 == 0 {
                print("*",terminator: "")
            } else {
                print(".",terminator: "")
            }
        } else {
            if j % 2 == 0 {
                print(".",terminator: "")
            } else {
                print("*",terminator: "")
            }
        }
    }
    print()
}
