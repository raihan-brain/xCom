//
//  SignupViewController.swift
//  xCom
//
//  Created by Shan Zaman on 19/5/20.
//  Copyright © 2020 Shan Zaman. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var signupButton: UIButton!
    
    var destinationVC: UIViewController?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        modifyUi()
    }
    
    func modifyUi() {
        emailTextField.makeCornerRound(textField: emailTextField)
        nameTextField.makeCornerRound(textField: nameTextField)
        phoneTextField.makeCornerRound(textField: phoneTextField)
        passwordTextField.makeCornerRound(textField: passwordTextField)
        confirmPasswordTextField.makeCornerRound(textField: confirmPasswordTextField)
        signupButton.makeCornerRound(uiButton: signupButton)
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    @IBAction func signupButtonPressed(_ sender: UIButton) {
        if let vc = UIStoryboard(name: "Auth", bundle: nil).instantiateViewController(withIdentifier: "LoginVC") as? LoginViewController {
            vc.modalTransitionStyle = .crossDissolve
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
        
        
    }
    
    
}
