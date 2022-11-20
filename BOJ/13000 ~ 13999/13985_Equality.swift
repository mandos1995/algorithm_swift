import Foundation
let input = readLine()!.compactMap{ Int(String($0)) }
if input[2] == (input[0] + input[1]){
    print("YES")
} else {
    print("NO")
}
