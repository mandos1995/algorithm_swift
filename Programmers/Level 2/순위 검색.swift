import Foundation

func solution(_ info:[String], _ query:[String]) -> [Int] {
    var dict: [String: [Int]] = [:]
    var answer: [Int] = []
    for info in info {
        let i = info.split(separator: " ").map { String($0) }
        let language = ["-", i[0]]
        let job = ["-", i[1]]
        let career = ["-", i[2]]
        let food = ["-", i[3]]
        let score = Int(i[4])!
        for l in language {
            for j in job {
                for c in career {
                    for f in food {
                        let transInfo = "\(l)\(j)\(c)\(f)"
                        if dict[transInfo] == nil {
                            dict[transInfo] = [score]
                        } else {
                            dict[transInfo]!.append(score)
                        }
                    }
                }
            }
        }
    }
    for d in dict {
        let sortedValue = d.value.sorted()
        dict[d.key] = sortedValue
    }
    for query in query {
        let q = query.split(separator: " ").map { String($0) }
        
        let language = q[0]
        let job = q[2]
        let career = q[4]
        let food = q[6]
        let score = Int(q[7])!
        let key = "\(language)\(job)\(career)\(food)"
        
        
        if let scores = dict[key] {
            var start = 0
            var end = scores.count - 1
            
            while start <= end {
                let mid = (start + end) / 2
                if scores[mid] < score {
                    start = mid + 1
                } else {
                    end = mid - 1
                }
            }
            answer.append(scores.count - start)
        } else {
            answer.append(0)
        }
    }
    return answer
}
