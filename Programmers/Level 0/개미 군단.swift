import Foundation

func solution(_ hp:Int) -> Int {
    return hp / 5 + hp % 5 / 3 + hp % 5 % 3
}
