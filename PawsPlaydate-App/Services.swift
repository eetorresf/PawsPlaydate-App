//
//  Services.swift
//  PawsPlaydate-App
//
//  Created by Erika Dey on 1/24/23.
//

import UIKit

class Services {
    static func createAlertController(title: String, message: String) -> UIAlertController{
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default) {(action) in
            alert.dismiss(animated: true, completion: nil)
        }
        alert.addAction(okAction)
        
        return alert
    }
}
