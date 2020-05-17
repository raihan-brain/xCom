//
//  util.swift
//  xCom
//
//  Created by Shan Zaman on 10/5/20.
//  Copyright © 2020 Shan Zaman. All rights reserved.
//

import UIKit

fileprivate var aView: UIView?

extension UIViewController {
    func showSnipper() {
        aView = UIView(frame: self.view.bounds)
        aView?.backgroundColor = UIColor.init(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
        let acivityIndicator = UIActivityIndicatorView(style: .large)
        acivityIndicator.center = aView!.center
        acivityIndicator.startAnimating()
        aView?.addSubview(acivityIndicator)
        self.view.addSubview(aView!)
        
    }
    
    func removeSnipper() {
        aView?.removeFromSuperview()
        aView = nil
    }
}
