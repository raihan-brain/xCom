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
    var backButtonDisable: Bool?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        modifyUi()
        // Do any additional setup after loading the view.
    }
    
    func modifyUi() {
        emailTextField.makeCornerRound(textField: emailTextField)
        passwordTextField.makeCornerRound(textField: passwordTextField)
        loginButton.makeCornerRound(uiButton: loginButton)
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
        if let vc = UIStoryboard(name: "Dashboard", bundle: nil).instantiateViewController(withIdentifier: "DashboardVC") as? TabBarViewController {
            vc.navigationItem.hidesBackButton = true
            vc.navigationItem.title = "xCom"
            self.navigationController?.pushViewController(vc, animated: true)
            
        }
        
    }
    
}
