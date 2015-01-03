//
//  ViewController.swift
//  PostCard
//
//  Created by HUGE | Isaiah Belle on 12/29/14.
//  Copyright (c) 2014 IsaiahBelleDigital. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!

    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
       // sender.backgroundColor = UIColor.redColor()
        if((enterMessageTextField.text) != nil){
            messageLabel.text=enterMessageTextField.text
            messageLabel.hidden=false
        }else{
            messageLabel.hidden=true
        }
        
        
    }
    


}

