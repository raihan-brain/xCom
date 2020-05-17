//
//  ViewController.swift
//  xCom
//
//  Created by Shan Zaman on 10/5/20.
//  Copyright © 2020 Shan Zaman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signupClicked(_ sender: UIButton) {
        self.showSnipper()
        Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false) { (t) in
            self.removeSnipper()
            let storyboard = UIStoryboard(name: "Auth", bundle: nil)
//            let mvc = storyboard.instantiateViewController(withIdentifier: "SignupVC")
            let mvc = storyboard.instantiateViewController(withIdentifier: "LoginVC")
            mvc.modalTransitionStyle = .crossDissolve
            //        self.present(mvc, animated: true, completion: nil)
            //        self.navigationController?.pushViewController(mvc, animated: true)
            self.navigationController?.pushViewController(mvc, animated: true)
        }
    }
}

