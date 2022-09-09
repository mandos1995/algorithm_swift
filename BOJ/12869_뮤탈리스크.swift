let n = Int(readLine()!)!
var scv = [0, 0, 0]
let input = readLine()!.split(separator: " ").map { Int($0)! }
input.enumerated().forEach {
    scv[$0.offset] = $0.element
}
var cache = [[[Int]]](repeating: [[Int]](repeating: [Int](repeating: -1, count: 61), count: 61), count: 61)
func attack(x: Int, y: Int, z: Int) -> Int {
    
    if x < 0 { return attack(x: 0, y: y, z: z) }
    if y < 0 { return attack(x: x, y: 0, z: z) }
    if z < 0 { return attack(x: x, y: y, z: 0) }
    
    if x == 0 && y == 0 && z == 0 {
        return 0
    }
    
    if cache[x][y][z] != -1 {
        return cache[x][y][z]
    }
    
    cache[x][y][z] = Int.max
    cache[x][y][z] = min(cache[x][y][z], attack(x: x - 9, y: y - 3, z: z - 1) + 1)
    cache[x][y][z] = min(cache[x][y][z], attack(x: x - 9, y: y - 1, z: z - 3) + 1)
    cache[x][y][z] = min(cache[x][y][z], attack(x: x - 3, y: y - 9, z: z - 1) + 1)
    cache[x][y][z] = min(cache[x][y][z], attack(x: x - 3, y: y - 1, z: z - 9) + 1)
    cache[x][y][z] = min(cache[x][y][z], attack(x: x - 1, y: y - 3, z: z - 9) + 1)
    cache[x][y][z] = min(cache[x][y][z], attack(x: x - 1, y: y - 9, z: z - 3) + 1)
    
    return cache[x][y][z]
}

let answer = attack(x: scv[0], y: scv[1], z: scv[2])
print(answer)
