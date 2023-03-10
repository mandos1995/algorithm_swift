let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1], k = input[2]
var addFoodValues: [[Int]] = []
var foods = [[Int]](repeating: [Int](repeating: 5, count: n), count: n)
var trees = [[[Int: Int]]](repeating: [[Int : Int]](repeating: [Int : Int](), count: n), count: n)

let dy = [-1, -1, -1, 0, 0, 1, 1, 1]
let dx = [-1, 0, 1, -1, 1, -1, 0, 1]

for _ in 0..<n {
    addFoodValues.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let y = input[0] - 1, x = input[1] - 1, age = input[2]
    trees[y][x][age] = 1
}

var deadTrees: [(Int, Int, Int)] = []
var breedingPossibleTrees: [(Int, Int, Int)] = []

func initTrees() {
    deadTrees.removeAll()
    breedingPossibleTrees.removeAll()
}

func isValidCoord(y: Int, x: Int) -> Bool {
    return 0..<n ~= y && 0..<n ~= x
}


func eatFood() {
    for y in 0..<n {
        for x in 0..<n {
            if !trees[y][x].isEmpty {
                var agingTree: [Int: Int] = [:]
                
                for age in trees[y][x].keys.sorted() {
                    
                    let count = trees[y][x][age]!
                    
                    if age * count <= foods[y][x] {
                        foods[y][x] -= age * count
                        agingTree[age + 1] = count
                        
                        if (age + 1) % 5 == 0 {
                            breedingPossibleTrees.append((count, y, x))
                        }
                    } else if age <= foods[y][x] {
                        let eatCount = foods[y][x] / age
                        
                        foods[y][x] -= age * eatCount
                        agingTree[age + 1] = eatCount
                        
                        if (age + 1) % 5 == 0 {
                            breedingPossibleTrees.append((eatCount, y, x))
                        }
                        deadTrees.append(((age / 2) * (count - eatCount), y, x))
                    } else {
                        deadTrees.append(((age / 2) * count, y, x))
                    }
                }
                trees[y][x] = agingTree
            }
        }
    }
}

func dieTrees() {
    for (food, y, x) in deadTrees {
        foods[y][x] += food
    }
}

func spreadTree() {
    for (count, y, x) in breedingPossibleTrees {
        for i in 0..<8 {
            let ny = y + dy[i]
            let nx = x + dx[i]
            
            if isValidCoord(y: ny, x: nx) {
                trees[ny][nx][1, default: 0] += count
            }
        }
    }
}

func addFood() {
    for y in 0..<n {
        for x in 0..<n {
            foods[y][x] += addFoodValues[y][x]
        }
    }
}

for _ in 0..<k {
    initTrees()
    eatFood()
    dieTrees()
    spreadTree()
    addFood()
}

var answer = 0

for y in 0..<n {
    for x in 0..<n {
        if !trees[y][x].isEmpty {
            answer += trees[y][x].values.reduce(0, +)
        }
    }
}

print(answer)
