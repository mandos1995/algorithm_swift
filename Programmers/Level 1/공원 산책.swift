import Foundation

func solution(_ park:[String], _ routes:[String]) -> [Int] {
    var coord = (0, 0)
    let park = park.map { $0.map { $0 }}
    let n = park.count
    let m = park[0].count
    for y in 0..<n {
        for x in 0..<m {
            if park[y][x] == "S" {
                coord = (y, x)
                break
            }
        }
    }
    
    func isValidCoord(_ y: Int, _ x: Int) -> Bool {
        return 0..<n ~= y && 0..<m ~= x
    }
    
    func isBlocked(_ y1: Int, _ x1: Int, _ y2: Int, _ x2: Int) -> Bool {
        for y in min(y1, y2)...max(y1, y2) {
            if park[y][x1] == "X" {
                return true
            }
        }
        
        for x in min(x1, x2)...max(x1, x2) {
            if park[y1][x] == "X" {
                return true
            }
        }
        return false
    }
    
    for route in routes {
        let dir = route.first!
        let move = Int(String(route.last!))!
        var y = coord.0
        var x = coord.1
        switch dir {
            case "E":
                x += move
            case "S":
                y += move
            case "W":
                x -= move
            default:
                y -= move
        }
        if !isValidCoord(y, x) || isBlocked(coord.0, coord.1, y, x) {
            continue
        } else {
            coord = (y, x)
        }
    }
    
    return [coord.0, coord.1]
}
