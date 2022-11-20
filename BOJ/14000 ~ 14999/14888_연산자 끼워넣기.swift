let n = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }
var oper = readLine()!.split(separator: " ").map { Int($0)! }
var minAnswer = Int.max
var maxAnswer = Int.min
func calculation(index: Int, answer: Int) {
    if index == n {
        if answer > maxAnswer {
            maxAnswer = answer
        }
        if answer < minAnswer {
            minAnswer = answer
        }
        return
    }
    
    for i in 0..<4 {
        if oper[i] > 0 {
            oper[i] -= 1
            switch i {
            case 0:
                calculation(index: index + 1, answer: answer + array[index])
            case 1:
                calculation(index: index + 1, answer: answer - array[index])
            case 2:
                calculation(index: index + 1, answer: answer * array[index])
            case 3:
                calculation(index: index + 1, answer: answer / array[index])
            default:
                break
            }
            oper[i] += 1
        }
    }
}
calculation(index: 1, answer: array[0])
print(maxAnswer)
print(minAnswer)
