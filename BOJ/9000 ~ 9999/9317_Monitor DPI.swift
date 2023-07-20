import Foundation

while let input = readLine()?.split(separator: " ").map { Double($0)! },
input != [0, 0, 0] {
    let d = input[0], hr = input[1], vr = input[2]
    let w = 16 * d / sqrt(337)
    let h = 9 * w / 16
    let answer1 = String(format: "%.2f", hr / w)
    let answer2 = String(format: "%.2f", vr / h)
    print("Horizontal DPI: \(answer1)")
    print("Vertical DPI: \(answer2)")
}
