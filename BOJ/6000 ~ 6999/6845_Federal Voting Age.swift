let t = Int(readLine()!)!

for _ in 0..<t { solution() }

func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let y = 2007 - input[0], m = input[1], d = input[2]
    
    if y < 18 {
        print("No")
    } else if y > 18 {
        print("Yes")
    } else {
        if m < 2 {
            print("Yes")
        } else {
            if m == 2 && d < 28 {
                print("Yes")
            } else {
                print("No")
            }
        }
    }
}
