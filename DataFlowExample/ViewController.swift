//
//  ViewController.swift
//  DataFlowExample
//
//  Created by Muhammad Rajab Priharsanto on 16/05/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fullnameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fullnameTextField.delegate = self
        phoneTextField.delegate = self
    }

}

//delegate gunanya untuk memanipulasi behavior dari textfield
//membuat custom behavior yang kita butuhkan
//extension buat textfield implementasi textfield delegate
extension ViewController: UITextFieldDelegate
{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        //jika textfieldnya yang fullname maka nextnya ke phoneTextField
        if textField == fullnameTextField
        {
            phoneTextField.becomeFirstResponder()
        }
        else if textField == phoneTextField
        {
            textField.resignFirstResponder()
        }
        return true
    }
}
