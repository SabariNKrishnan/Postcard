//
//  ViewController.swift
//  Postcard
//
//  Created by Sabari N. Krishnan on 9/20/14.
//  Copyright (c) 2014 Sabari N. Krishnan. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

  
    @IBOutlet weak var MessageLabel: UILabel!
 
   
    @IBOutlet weak var EnterANameTextField: UITextField!
    
    
    @IBOutlet weak var EnterAMessageTextField: UITextField!
    
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func SendMailPressedButton(sender: UIButton)
    {
        //Code will evaluate when we press the button
        MessageLabel.hidden = false
        MessageLabel.text = EnterAMessageTextField.text
        EnterAMessageTextField.text = ""
        EnterAMessageTextField.resignFirstResponder()
        MessageLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
    
    

}

