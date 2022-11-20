let input = readLine()!
if input == "0"{
    print(0)
} else {
    let startIdx = input.index(input.startIndex, offsetBy: 0)
    let startIdx2 = input.index(input.startIndex, offsetBy: 1)
    let inputStart = String(input[startIdx])
    switch inputStart {
    case "1":
        print("1",terminator: "")
    case "2":
        print("10",terminator: "")
    case "3":
        print("11",terminator: "")
    case "4":
        print("100",terminator: "")
    case "5":
        print("101",terminator: "")
    case "6":
        print("110",terminator: "")
    case "7":
        print("111",terminator: "")
    default:
        print("잘못된 입력")
    }
    for i in String(input[startIdx2...]){
        switch i {
        case "0":
            print("000",terminator: "")
        case "1":
            print("001",terminator: "")
        case "2":
            print("010",terminator: "")
        case "3":
            print("011",terminator: "")
        case "4":
            print("100",terminator: "")
        case "5":
            print("101",terminator: "")
        case "6":
            print("110",terminator: "")
        case "7":
            print("111",terminator: "")
        default:
            print("잘못된 입력")
        }
    }
    
}
