//
//  SignInViewController.swift
//  PawsPlaydate-App
//
//  Created by Erika Dey on 1/24/23.
//

import UIKit

class SignInViewController: UIViewController {
    
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var signInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func signInButton_Clicked(_ sender: Any) {
        self.performSegue(withIdentifier: "userSignedInSegue", sender: nil)
    }
    
}
