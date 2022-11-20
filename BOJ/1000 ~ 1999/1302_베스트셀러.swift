var book: [String: Int] = [:]

for _ in 0..<Int(readLine()!)! {
    let name = readLine()!
    if book.keys.contains(name) {
        book[name]! += 1
    } else {
        book[name] = 1
    }
}

let sortedBook = book.sorted { $0.value == $1.value ? $0.key < $1.key : $0.value > $1.value }
print(sortedBook[0].key)
