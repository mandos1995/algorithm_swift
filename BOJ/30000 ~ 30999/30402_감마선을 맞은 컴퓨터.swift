var inputs: [String] = []
for _ in 0..<15 {
    inputs.append(contentsOf: readLine()!.split(separator: " ").map { String($0) })
}

var picture = Set(inputs)
if inputs.contains("w") { print("chunbae") }
else if inputs.contains("b") { print("nabi") }
else { print("yeongcheol") }
