//
//  LoginViewController.swift
//  SIMSBeta2
//
//  Created by Alvaro Ucros on 11/18/22.
//

import UIKit
import Firebase
class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func LoginClicked(_ sender: UIButton) {
        guard let email = emailTextField.text else {return}
        passwordTextField.isSecureTextEntry = true
        guard let password = passwordTextField.text else {return}
        Auth.auth().signIn(withEmail: email, password: password) { firebaseResult, error in if let e = error {
            print("Error")
        }
            else {
                self.performSegue(withIdentifier: "goToNext", sender: self)
                
        }}
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
