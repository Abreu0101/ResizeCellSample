//
//  ViewController.swift
//  ResizeCell
//
//  Created by Jose Roberto Abreu on 5/17/16.
//  Copyright © 2016 Media Revolution. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var pages:[String] = ["http://www.apple.com","http://www.apple.com","http://www.apple.com","http://www.apple.com","http://www.apple.com"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension ViewController : UITableViewDataSource, UITableViewDelegate{

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pages.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cellCustom", forIndexPath: indexPath) as! CustomTableViewCell
        
        let page = pages[indexPath.row]
        cell.loadPage(page)
        
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        //Based on the criteria that determine , you're going to put the height that suits you. As an example here I put a height of 300 if it is divisible by 2, 200 otherwise .
        
        if indexPath.row % 2 == 0{
            return 300.0
        }else{
            return 200.0
        }
        
    }
    
}
