//
//  SignUpViewController.swift
//  PawsPlaydate-App
//
//  Created by Erika Dey on 1/24/23.
//

import UIKit
import Firebase

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
        let auth = Auth.auth()
        
        auth.createUser(withEmail: emailField.text!, password: passwordField.text!) { (authResult, error) in
            if error != nil {
                self.present(Services.createAlertController(title: "Error", message: error!.localizedDescription), animated: true, completion: nil)
                return
            }
            self.performSegue(withIdentifier: "userSignedUpSegue", sender: nil)
        }
        
        
    }
    
}
