import Foundation

func solution(_ record:[String]) -> [String] {
    var dict: [String: String] = [:]
    var answers: [String] = []
    for r in record {
        let commands = r.split(separator: " ").map { String($0) }
        switch commands[0] {
            case "Enter":
                dict[commands[1]] = commands[2]
                answers.append("\(commands[1]) Enter")
            case "Leave":
                answers.append("\(commands[1]) Leave")
            case "Change":
                dict[commands[1]] = commands[2]
            default:
                continue
        }
    }

    for (index, a) in answers.enumerated() {
        let answer = a.split(separator: " ").map { String($0) }
        let command = answer[1] == "Enter" ? "님이 들어왔습니다." : "님이 나갔습니다."
        answers[index] = dict[answer[0]]! + command
    }
    return answers
}
