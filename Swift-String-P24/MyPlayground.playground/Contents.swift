import UIKit

var str = "Hello, playground"


//Strings are not arrays

let name = "Luke"

let letter = name[name.index(name.startIndex, offsetBy: 3)]
print(letter)



extension String {
    subscript(i: Int) -> String {
        return String(self[index(startIndex, offsetBy: i)])
    }
}

let letter2 = name[3]

//Working with strings in Swift

let password = "123456"
password.hasPrefix("123")
password.hasSuffix("456")

extension String {
    func deletingPrefix(_ prefix:String) -> String {
        guard self.hasSuffix(prefix) else {return self}
        return String(self.dropFirst(prefix.count))
    }
    func deletingSuffix(_ suffix:String) -> String {
        guard self.hasSuffix(suffix) else {return self}
        return String(self.dropLast(suffix.count))
    }
}


let weather = "It's going to rain"
print(weather.capitalized)

extension String {
    var capitalizeFirst:String {
        guard let firstLetter = self.first else {return ""}
        return firstLetter.uppercased() + self.dropFirst()
    }
}

let input = "Swift is like Objective-C without the C"

input.contains("Swift")

let languages = ["Python", "Ruby", "Swift"]

languages.contains("Swift")
// First solution
extension String {
    func containsAny(of array: [String]) -> Bool {
        for item in array {
            if self.contains(item) {
                return true
            }
        }
        return false
    }
}

input.containsAny(of: languages)
// OR second solution
languages.contains(where: input.contains)
