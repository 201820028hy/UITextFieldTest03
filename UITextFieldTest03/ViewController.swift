//
//  ViewController.swift
//  UITextFieldTest03
//
//  Created by dit03 on 2019. 4. 4..
//  Copyright © 2019년 201820028. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTextField.delegate = self//커넥션
        myTextField.clearButtonMode = UITextField.ViewMode.always//
    }

    @IBAction func btnPressed(_ sender: Any) {
        myLabel.text = myTextField.text
        myTextField.text = ""
        myTextField.resignFirstResponder()//버튼 누르면 키패드 내려감
    }
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        myTextField.resignFirstResponder()//return버튼 누르면 키패드 내려감
        myTextField.backgroundColor = UIColor.gray
        return true
    }
    
    public func textFieldShouldClear(_ textField: UITextField) -> Bool {
        view.backgroundColor = UIColor.black
        return true
    }
    
}

