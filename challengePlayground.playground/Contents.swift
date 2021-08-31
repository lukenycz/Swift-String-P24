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
