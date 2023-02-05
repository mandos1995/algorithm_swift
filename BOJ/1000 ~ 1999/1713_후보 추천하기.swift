let n = Int(readLine()!)!
_ = readLine()
let array = readLine()!.split(separator: " ").map { Int($0)! }
var photos: [(Int, Int)] = []

for arr in array {
    if photos.contains(where: { $0.0 == arr }) {
        let findIndex = photos.firstIndex { $0.0 == arr }!
        photos[findIndex].1 += 1
    } else {
        if photos.count == n {
            let removed = photos.filter { $0.1 == photos.map { $0.1 }.min()! }.first!
            photos.remove(at: photos.firstIndex { $0 == removed }!)
        }
        photos.append((arr, 1))
    }
}

photos.map { $0.0 }.sorted(by: <).forEach { print($0, terminator: " ")}
