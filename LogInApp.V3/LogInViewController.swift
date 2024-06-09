//
//  ViewController.swift
//  LogInApp.V3
//
//  Created by Marat Fakhrizhanov on 09.06.2024.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet var UserPasswordLabel: UITextField!
    @IBOutlet var UserLoginLabel: UITextField!
    
    let user = User.getUser()
    
    
    
    
    @IBAction func logInButtonPressed() {
        if user.login == "" && user.password == "" {
            return
        }else {
            showAlert(title: "", messege: "")
            }
        }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                
                guard let tabBarController = segue.destination as? UITabBarController else { return }
                guard let viewControllers = tabBarController.viewControllers else { return }
                
                
                for viewController in viewControllers {
                    
                    if let welcomeVC = viewController as? WelcomeViewController {
                        welcomeVC.user = user
                    } else {
                        if let navigationVC = viewController as? UINavigationController{
                            let aboutMeVC = navigationVC.topViewController as! AboutMeViewController
                            aboutMeVC.user = user
                        }
                    }
                }
            
        }
    
    
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        UserLoginLabel.text = ""
        UserPasswordLabel.text = ""
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(title: "you realy dont know password ?", messege: "qwerty(nil)")
    }
    
    @IBAction func forgotNameButtonPressed() {
        showAlert(title: "your name is ", messege: "Marat(nil)")
    }

    

func showAlert(title: String , messege : String) {
    
    let alert = UIAlertController(title: title, message: messege, preferredStyle: .alert)
    
    let goodAction = UIAlertAction(title: "OK", style: .default)
    alert.addAction(goodAction)
    present(alert, animated: true)
}
}
