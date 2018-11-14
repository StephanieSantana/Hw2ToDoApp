//
//  SecondViewController.swift
//  ToDoApp
//
//  Created by Stephanie Santana on 10/29/18.
//  Copyright © 2018 Stephanie Santana. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    
    @IBAction func addItem(_ sender: Any) {
        if(input.text != "")
        {
        list.append(input.text!)
        input.text = ""
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

