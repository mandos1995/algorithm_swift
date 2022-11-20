import Foundation
let input = readLine()!.split(separator: " ").map { Int($0)! }
if input[0] + input[1] + input[2] > 99 {
    print("OK")
} else {
    let min = input.min()!
    switch input.firstIndex(of: min) {
    case 0:
        print("Soongsil")
    case 1:
        print("Korea")
    case 2:
        print("Hanyang")
    default:
        print("잘못된 입력")
    }
}
