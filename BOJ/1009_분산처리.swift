let T = Int(readLine()!)!
for _ in 0..<T {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    var a = input[0] % 10
    var b = input[1] % 4
    if b == 0{
        b = 4
    }
    if input[1] == 0{
        print(1)
    }
    else {
        switch a {
        case 1, 5, 6:
            print(a)
        case 2:
            switch b{
            case 1:
                print(2)
            case 2:
                print(4)
            case 3:
                print(8)
            default:
                print(6)
            }
        case 3:
            switch b{
            case 1:
                print(3)
            case 2:
                print(9)
            case 3:
                print(7)
            default:
                print(1)
            }
        case 4:
            switch b{
            case 1:
                print(4)
            case 2:
                print(6)
            case 3:
                print(4)
            default:
                print(6)
            }
        case 7:
            switch b{
            case 1:
                print(7)
            case 2:
                print(9)
            case 3:
                print(3)
            default:
                print(1)
            }
        case 8:
            switch b{
            case 1:
                print(8)
            case 2:
                print(4)
            case 3:
                print(2)
            default:
                print(6)
            }
        case 9:
            switch b{
            case 1:
                print(9)
            case 2:
                print(1)
            case 3:
                print(9)
            default:
                print(1)
            }
        default:
            print(10)
        }
    }
}
