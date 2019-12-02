//
//  ViewController.swift
//  CodePathDemo
//
//  Created by Justin Galang on 11/13/19.
//  Copyright © 2019 Justin Galang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    var defaultBackgroundColor: UIColor!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        defaultBackgroundColor = view.backgroundColor
    }

    @IBAction func didTapButton(_ sender: Any) {
        print("Hello")
        textLabel.textColor = UIColor.systemOrange
    }
    
    @IBAction func didTapViewButton(_ sender: Any) {
        view.backgroundColor = UIColor.red
    }
    
    @IBAction func didTapTextChangeButton(_ sender: Any) {
        textLabel.text = textField.text
        
    }
    
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "Hello"
        view.backgroundColor = defaultBackgroundColor
        textLabel.textColor = UIColor.black
    }
}

