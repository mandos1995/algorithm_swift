let name = ["Yakk", "Doh", "Seh", "Ghar", "Bang", "Sheesh"]
for i in 1...Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: >)
    let a = input[0], b = input[1]
    print("Case \(i):", terminator: " ")
    if a == b {
        switch a {
        case 1:
            print("Habb Yakk")
        case 2:
            print("Dobara")
        case 3:
            print("Dousa")
        case 4:
            print("Dorgy")
        case 5:
            print("Dabash")
        case 6:
            print("Dosh")
        default:
            continue
        }
    } else {
        if a == 6 && b == 5 {
            print("Sheesh Beesh")
        } else {
            print(name[a - 1] + " " + name[b - 1])
        }
    }
}
