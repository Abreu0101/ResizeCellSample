//
//  CustomTableViewCell.swift
//  ResizeCell
//
//  Created by Jose Roberto Abreu on 5/17/16.
//  Copyright © 2016 Media Revolution. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var wvPage: UIWebView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    func loadPage(urlString:String){
        if let url = NSURL(string: urlString){
            self.activityIndicator.startAnimating()
            let urlRequest = NSURLRequest(URL: url)
            self.wvPage.loadRequest(urlRequest)
        }
    }
    
}
