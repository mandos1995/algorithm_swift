import Foundation
var formatter = DateFormatter()
formatter.dateFormat = "yyyy-MM-dd"
var current_date_string = formatter.string(from: Date())
var dateArr = current_date_string.split(separator: "-")
for i in dateArr{
    print(i)
}
