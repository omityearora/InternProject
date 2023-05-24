//
//  ThirdViewController.swift
//  InternProject
//
//  Created by Aman Arora on 24/05/23.
//

import UIKit
import MoEngageCards

class ThirdViewController: UIViewController {

    @IBAction func LogoutButton(_ sender: Any) {
        
    }
    
    
    @IBAction func CardsButton(_ sender: Any) {
        
        MoEngageSDKCards.sharedInstance.presentCardsViewController()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
