//
//  AboutMeViewController.swift
//  LogInApp.V3
//
//  Created by Marat Fakhrizhanov on 09.06.2024.
//

import UIKit

class AboutMeViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
   
    @IBOutlet var aboutMeLabel: UILabel!
    @IBOutlet var fullNameLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage( named: user.person.photo)
        fullNameLabel.text = user.person.fullName
        aboutMeLabel.text = user.person.aboutMe
    }
    
    @IBAction func moreInfoButtonPressed() {
    }
    


}
