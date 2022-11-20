import Foundation
let input = readLine()!.compactMap { Int(String($0))}

if input.count == 3 && input[0] == 1 && input[1] == 0{
    print(10 + input[2])
} else if input.count == 3 && input[1] == 1 {
    print(input[0] + 10)
} else if input.count == 4{
    print(20)
} else{
    print(input[0] + input[1])
}
