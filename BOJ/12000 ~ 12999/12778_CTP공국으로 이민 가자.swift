func solution() {
    let input = readLine()!.split(separator: " ").map { String($0) }
    let type = input[1]
    
    if type == "C" {
        let chars = readLine()!.split(separator: " ").map { Character(String($0)).asciiValue! - 64 }
        for char in chars {
            print(char, terminator: " ")
        }
    } else {
        let nums = readLine()!.split(separator: " ").map { Int($0)! }
        for num in nums {
            print(UnicodeScalar(num + 64)!, terminator: " ")
        }
    }
    print()
}

let t = Int(readLine()!)!
for _ in 0..<t { solution() }
