//
//  CategoriesViewController.swift
//  Coolbates
//
//  Created by samosys on 25/09/20.
//  Copyright © 2020 samosys. All rights reserved.
//

import UIKit

class CategoriesViewController: UIViewController {

    @IBOutlet weak var table_View: UITableView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        
    }
    
    //MARK: - Custom Method

    @IBAction func back(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func search(_ sender: Any) {
        
    }
    
}

extension CategoriesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CategoriesCell
        
        cell.selectionStyle = .none
        
        if indexPath.row == 0 {
            
            cell.imgIcon.image = UIImage(named: "All_store")
            cell.lblTitle.text = "All\nStores"
            cell.lblItems.text = ""
            
        } else {
            
            cell.imgIcon.image = UIImage(named: "Clothing")
            cell.lblTitle.text = "Clothing & Accessories"
            cell.lblItems.text = "52,121 items"
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 125
    }
}
