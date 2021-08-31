import UIKit

var str = "Hello, playground"

/*
Challenge

Create a String extension that adds a withPrefix() method. If the string already contains the prefix it should return itself; if it doesn’t contain the prefix, it should return itself with the prefix added. For example: "pet".withPrefix("car") should return “carpet”. */

var withAddedPrefix = "pet"

extension String {
    mutating func withPrefix(prefix:String) {
        self = prefix + self
    }
    
    mutating func addPrefixIfNeeded(_ prefix: String, requiredPrefix: String? = nil) {
            guard !self.hasPrefix(requiredPrefix ?? prefix) else { return }
            self = prefix + self
    }
}

withAddedPrefix.withPrefix(prefix: "car")
print(withAddedPrefix)

withAddedPrefix.addPrefixIfNeeded("car")

/*
 
 Create a String extension that adds an isNumeric property that returns true if the string holds any sort of number. Tip: creating a Double from a String is a failable initializer.
 */

extension String  {
    var isNumber: Bool {
        return !isEmpty && rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil
    }
}
var five = "5"

five.isNumber
withAddedPrefix.isNumber


/*
 Create a String extension that adds a lines property that returns an array of all the lines in a string. So, “this\nis\na\ntest” should return an array with four elements.
 */

extension String {
    var wordList: [String] {
        return components(separatedBy: CharacterSet.alphanumerics.inverted).filter { !$0.isEmpty }
    }
}
var test = "this is test string"

test.wordList
