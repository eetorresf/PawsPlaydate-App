//
//  SignUpViewController.swift
//  PawsPlaydate-App
//
//  Created by Erika Dey on 1/24/23.
//

import UIKit

class SignUpViewController: UIViewController {

    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func signUpButton_Clicked(_ sender: Any) {
        self.performSegue(withIdentifier: "userSignedUpSegue", sender: nil)
    }
    
}
