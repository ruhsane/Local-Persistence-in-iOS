//
//  ViewController.swift
//  Keychain
//
//  Created by Ruhsane Sawut on 4/10/19.
//  Copyright © 2019 ruhsane. All rights reserved.
//

import UIKit
import KeychainSwift

class ViewController: UIViewController {

    let keychain = KeychainSwift()

    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    
    @IBOutlet weak var syncSwitch: UISwitch!
    
    @IBOutlet weak var outputTextView: UITextView!
    @IBOutlet weak var deleteButton: UIButton!
    
    @IBAction func saveClicked(_ sender: Any) {
        keychain.set(inputTextField.text ?? "", forKey: "my key")
        outputTextView.text = keychain.get("my key")
    }
    
    @IBAction func deleteClicked(_ sender: Any) {
        keychain.delete("my key")
        outputTextView.text = keychain.get("my key")

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }


}

