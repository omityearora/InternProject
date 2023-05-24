//
//  ViewController.swift
//  InternProject
//
//  Created by Aman Arora on 24/05/23.
//

import UIKit
import MoEngageSDK
import MoEngageInApps

class ViewController: UIViewController {

    @IBOutlet weak var Username: UITextField!
    @IBOutlet weak var FirstName: UITextField!
    
    @IBOutlet weak var Phone: UITextField!
    
    @IBOutlet weak var City: UITextField!
        
    @IBAction func SignUpButton(_ sender: Any) {
    }
    
    @IBAction func LoginRedirect(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MoEngageSDKInApp.sharedInstance.showInApp()
        
        // Do any additional setup after loading the view.
    }


}

