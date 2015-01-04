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
    
    @IBOutlet weak var sendMessageButton: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        if( (enterMessageTextField.text != nil) &&
            !(enterMessageTextField.text.isEmpty)){
            messageLabel.text=enterMessageTextField.text
            messageLabel.hidden = false
            messageLabel.textColor = UIColor.redColor()
            enterMessageTextField.text = ""
            sendMessageButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    
        }
         enterMessageTextField.resignFirstResponder()
    }
    
    @IBAction func resetButtonPressed(sender: UIButton) {
        messageLabel.hidden = true
        messageLabel.text = ""
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        self.view.endEditing(true)
    }


}

