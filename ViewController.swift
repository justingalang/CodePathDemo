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
    
    let defaultMessage = "Hello From Justin G!!!"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        defaultBackgroundColor = view.backgroundColor
    }

    @IBAction func didTapButton(_ sender: Any) {
        print("Hello")
        textLabel.textColor = UIColor.systemYellow
    }
    
    @IBAction func didTapViewButton(_ sender: Any) {
        view.backgroundColor = UIColor.purple
    }
    
    @IBAction func didTapTextChangeButton(_ sender: Any) {
        let text = textField.text;
        // Check for empty fields
        if text?.isEmpty ?? true {
            textLabel.text = "Goodbye!"
        } else {
            textLabel.text = textField.text
        }
    }
    
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = defaultMessage
        view.backgroundColor = defaultBackgroundColor
        textLabel.textColor = UIColor.white
    }
}

