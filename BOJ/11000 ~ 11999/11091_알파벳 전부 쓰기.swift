let t = Int(readLine()!)!
let alpha = Set((65...90).map { String(UnicodeScalar($0)!) } )

for _ in 0..<t {
    let input = Set(readLine()!.filter { $0.isLetter }.map { $0.uppercased() })
    print(input == alpha ? "pangram" : "missing \(alpha.subtracting(input).map { $0.lowercased() }.sorted().joined())")
}
