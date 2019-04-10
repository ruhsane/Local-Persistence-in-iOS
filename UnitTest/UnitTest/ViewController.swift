//
//  ViewController.swift
//  UnitTest
//
//  Created by Ruhsane Sawut on 4/8/19.
//  Copyright © 2019 ruhsane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let textField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "Hello World"
        
        textField.placeholder = "placeholder"
        view.addSubview(textField)
        
    }
    

    func vowelsInAString(string: String) -> Int {
        let vowels: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        var numberOfVowels = 0
        for character in string {
            if vowels.contains(character) {
                numberOfVowels +=  1
            }
        }
        return numberOfVowels
    }
    
    func makeTitle(string: String) -> String {
        let words = string.components(separatedBy: " ")
        
        var headline = ""
        for var word in words {
            let firstCharacter = word.remove(at:word.startIndex)
            headline += "\(String(firstCharacter).uppercased())\(word) "
        }
        
        return String(headline.dropLast())
    }

}

