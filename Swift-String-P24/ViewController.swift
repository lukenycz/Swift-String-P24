//
//  ViewController.swift
//  Swift-String-P24
//
//  Created by Łukasz Nycz on 26/08/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let name = "Luke"
        
        let letter = name[name.index(name.startIndex, offsetBy: 3)]
        print(letter)
    }

}
extension String {
    subscript(i: Int) -> String {
        return String(self[index(startIndex, offsetBy: i)])
    }
}
