import Foundation

var i = 1
while let input = readLine(), input != "0" {
    let input = input.split(separator: " ").map { Double($0)! }
    let r = input[0], w = input[1], l = input[2]
    if isOnTable(r, w, l) {
        print("Pizza \(i) fits on the table.")
    } else {
        print("Pizza \(i) does not fit on the table.")
    }
    i += 1
}

func isOnTable(_ r: Double, _ w: Double, _ l: Double) -> Bool {
    return (w * w / 4) + (l * l / 4) <= r * r
}
