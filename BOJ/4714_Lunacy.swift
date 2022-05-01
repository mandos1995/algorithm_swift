import Foundation
while true {
    let num = Double(readLine()!)!
    if num < 0 {
        break
    }
    print("Objects weighing \(String(format: "%.2f", round(num * 100) / 100)) on Earth will weigh \(String(format: "%.2f", round(num * 0.167 * 100) / 100)) on the moon.")
}
