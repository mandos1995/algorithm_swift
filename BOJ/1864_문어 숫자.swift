import Foundation
while true{
    let input = readLine()!
    var result = 0
    var cnt = input.count
    if input == "#"{
        break
    }
    for i in input {
        switch i {
        case "-":
            cnt -= 1
            continue
        case "\\":
            result += 1 * Int(pow(8.0,Double(cnt - 1)))
            cnt -= 1
        case "(":
            result += 2 * Int(pow(8.0,Double(cnt - 1)))
            cnt -= 1
        case "@":
            result += 3 * Int(pow(8.0,Double(cnt - 1)))
            cnt -= 1
        case "?":
            result += 4 * Int(pow(8.0,Double(cnt - 1)))
            cnt -= 1
        case ">":
            result += 5 * Int(pow(8.0,Double(cnt - 1)))
            cnt -= 1
        case "&":
            result += 6 * Int(pow(8.0,Double(cnt - 1)))
            cnt -= 1
        case "%":
            result += 7 * Int(pow(8.0,Double(cnt - 1)))
            cnt -= 1
        case "/":
            result += -1 * Int(pow(8.0,Double(cnt - 1)))
            cnt -= 1
        default:
            continue
        }
    }
    print(result)
}
