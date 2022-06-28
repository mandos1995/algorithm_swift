import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let half = (brown + 4) / 2
    var answer = [0, 0]
    for height in 3..<half {
        let width = half - height
        if width * height == brown + yellow {
            answer = [width, height]
            break
        }
    }
    
    return answer
}
