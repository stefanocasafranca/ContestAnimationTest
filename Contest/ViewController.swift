//
//  ViewController.swift
//  Contest
//
//  Created by Stefano Casafranca on 4/19/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var emailTextField: UITextField!
    
    func shakeTextField(_ textField: UITextField) {
        let shake: CGFloat = 1000

        UIView.animateKeyframes(withDuration: 0.4, delay: 0, options: [], animations: {
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.1) {
                textField.transform = CGAffineTransform(translationX: -shake, y: 0)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.1, relativeDuration: 0.1) {
                textField.transform = CGAffineTransform(translationX: shake, y: 0)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.2, relativeDuration: 0.1) {
                textField.transform = CGAffineTransform(translationX: -shake, y: 0)
            }
            // Reset to normal position
            UIView.addKeyframe(withRelativeStartTime: 0.3, relativeDuration: 0.1) {
                textField.transform = .identity
            }
        })
    }

    
    
    
    @IBAction func submitButton(_ sender: Any) {
        guard let email = emailTextField.text, !email.isEmpty else {
                shakeTextField(emailTextField) // Call the shake animation
                return
            }

        // Identifier set to the arrow in the Main Storyboard
            performSegue(withIdentifier: "goToSuccessScreen", sender: self)
        
        
    }
    
    
    
}

