//
//  HomeViewController.swift
//  DataFlowExample
//
//  Created by Muhammad Rajab Priharsanto on 16/05/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    //! itu yakin nilainya akan dipassing
    //? itu bisa dipassing bisa nggak
    
    //variabel penampung
    var name: String!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //set label ke penampungnya
        nameLabel.text = name
        
        // Do any additional setup after loading the view.
    }
    
}
