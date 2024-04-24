//
//  ViewController.swift
//  HelloiPhone
//
//  Created by Declan on 4/17/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelHello: UILabel!
    @IBOutlet weak var textFieldHello: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickButton(_ sender: Any) {
        let rValue = "안녕하세요, " + textFieldHello.text! + " 님"
        
        labelHello.text = rValue
    }
    
}

