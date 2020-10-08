//
//  MyAccountViewController.swift
//  Coolbates
//
//  Created by samosys on 07/10/20.
//  Copyright © 2020 samosys. All rights reserved.
//

import UIKit

class MyAccountViewController: UIViewController {
    
    @IBOutlet weak var imgUser: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var table_View: UITableView!
    
    let arrNames = ["My Account", "Account Settings", "Favourites Cool Stores", "Cool Shopping trips", "CoolBates Investment", "CoolBates Transfers", "Account Settings", "Email Subscription"]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        table_View.tableFooterView = UIView()
        print(UIScreen.main.sizeType)

        if UIScreen.main.sizeType == .iPhone6 || UIScreen.main.sizeType == .iPhone7Plus {
            
            table_View.isScrollEnabled = true
            
        } else {
            
            table_View.isScrollEnabled = false
        }
        
    }
    
    //MARK: - Custom Method
    
    @IBAction func uploadProfile(_ sender: Any) {
        
    }
    
}

extension MyAccountViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! AccountCell
        
        cell.selectionStyle = .none
        
        cell.lblTitle.text = arrNames[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 60
    }
}
