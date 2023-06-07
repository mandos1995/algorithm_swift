let input = readLine()!.split(separator: " ").map { Int($0)! }
let r = input[0], b = input[1]

main: for i in 3... {
    for j in 3...i {
        if i * j != r + b {
            continue
        }
        let brown = (i - 2) * (j - 2)
        let red = i * j - brown
        
        if red == r && brown == b {
            print(i, j)
            break main
        }
    }
}
