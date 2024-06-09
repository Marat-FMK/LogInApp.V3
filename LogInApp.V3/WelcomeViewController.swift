//
//  WelcomeViewController.swift
//  LogInApp.V3
//
//  Created by Marat Fakhrizhanov on 09.06.2024.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var fullNameLabel: UILabel!
     
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        fullNameLabel.text = " Welcome, \(user.person.fullName)."
        
    }
    

   
}
