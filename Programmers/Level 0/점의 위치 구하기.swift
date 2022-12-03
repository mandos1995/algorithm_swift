import Foundation

func solution(_ dot:[Int]) -> Int {
    let x = dot[0], y = dot[1]
    if x > 0 && y > 0 {
        return 1
    } else if x < 0 && y > 0 {
        return 2
    } else if x < 0 && y < 0 {
        return 3
    } else {
        return 4
    }
}
