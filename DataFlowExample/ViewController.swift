//
//  ViewController.swift
//  DataFlowExample
//
//  Created by Muhammad Rajab Priharsanto on 16/05/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var fullnameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //buat assign delegate dari viewcontroller ke textfield
        fullnameTextField.delegate = self
        phoneTextField.delegate = self
    }
    
    @IBAction func registerUser(_ sender: Any)
    {
        // action buat segue/pindah halaman
        performSegue(withIdentifier: "GoToHome", sender: nil)
    }
    
    // fungsi yang dijalan setelah performSegue, salah satu kegunaannya adalah untuk passing data
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        //as? itu typecasting, menurunkan datanya ke HomeViewController
        
        //jika castingnya berhasil dan dapat HomeViewController maka ..
        if let destination = segue.destination as? HomeViewController
        {
            // kita set nilai name di HomeViewController ke textfield
            destination.name = fullnameTextField.text
        }
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
