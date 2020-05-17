//
//  LoginViewController.swift
//  xCom
//
//  Created by Shan Zaman on 12/5/20.
//  Copyright © 2020 Shan Zaman. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        modifyUi()
        // Do any additional setup after loading the view.
    }
    
    func modifyUi() {
        emailTextField.layer.cornerRadius = emailTextField.layer.frame.height / 2
        emailTextField.clipsToBounds = true
        emailTextField.layer.borderColor = UIColor.red.cgColor
        emailTextField.layer.borderWidth = 1.0
        passwordTextField.layer.cornerRadius = passwordTextField.layer.frame.height / 2
        passwordTextField.layer.borderColor = UIColor.red.cgColor
        passwordTextField.layer.borderWidth = 1.0
        passwordTextField.clipsToBounds = true
        loginButton.layer.borderWidth = 1.0
        loginButton.layer.borderColor = UIColor.red.cgColor
        loginButton.layer.cornerRadius = loginButton.layer.frame.height / 2
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func loginButtonPressed(_ sender: UIButton) {
        print("working on it")
    }
}
