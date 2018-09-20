//
//  Moving Post Page ViewController.swift
//  Move It.
//
//  Created by Ryan Borgstrom on 9/17/18.
//  Copyright © 2018 Ryan Borgstrom. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class Moving_Post_Page_ViewController: UIViewController {

    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var tblJSON: UITableView!
    
    var arrRes = [[String:AnyObject]]() //Array of dictionary

    var finalName = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Alamofire.request("https://gentle-tor-12481.herokuapp.com/all_users").responseJSON { (responseData) -> Void in
            if((responseData.result.value) != nil) {
                let swiftyJsonVar = JSON(responseData.result.value!)
                print(swiftyJsonVar)
            if let resData = swiftyJsonVar["all_users"].arrayObject {
                self.arrRes = resData as! [[String:AnyObject]]
            }
            if self.arrRes.count > 0 {
                self.tblJSON.reloadData()
            }
        }
      }
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            let cell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell")!
            var dict = arrRes[indexPath.row]
            cell.textLabel?.text = dict["mover_username"] as? String
            cell.detailTextLabel?.text = dict["mover_location"] as? String
            return cell
        }
        
        func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return arrRes.count
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


