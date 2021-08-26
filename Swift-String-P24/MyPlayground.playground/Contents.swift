import UIKit

var str = "Hello, playground"


let name = "Luke"

let letter = name[name.index(name.startIndex, offsetBy: 3)]
print(letter)



extension String {
    subscript(i: Int) -> String {
        return String(self[index(startIndex, offsetBy: i)])
    }
}

let letter2 = name[3]
