//
//  LoadingView.swift
//  MVVMDemo
//
//  Created by Nikesh Jha on 9/13/18.
//  Copyright © 2018 Nikesh Jha. All rights reserved.
//

import Foundation
import UIKit

public class LoadingView {
    //Create and return a Loading AlertController instance
    static func newLoadingAlert() -> UIAlertController {
        let loadingAlert = UIAlertController(title: nil, message: "Loading...", preferredStyle: .alert)
        
        let loadingIndicator = UIActivityIndicatorView(frame: CGRect(x: 10, y: 5, width: 80, height: 50))
        loadingIndicator.hidesWhenStopped = true
        loadingIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.gray
        loadingIndicator.startAnimating()
        loadingAlert.view.addSubview(loadingIndicator)
        
        return loadingAlert
    }
}

