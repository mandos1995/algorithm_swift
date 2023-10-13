import Foundation

while let input = readLine() {
    for i in input {
        switch i {
        case "i":
            print("e", terminator: "")
        case "e":
            print("i", terminator: "")
        case "I":
            print("E", terminator: "")
        case "E":
            print("I", terminator: "")
        default:
            print(i, terminator: "")
        }
    }
    print()
}
