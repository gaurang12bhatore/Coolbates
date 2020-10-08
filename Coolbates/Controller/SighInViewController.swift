//
//  SighInViewController.swift
//  Coolbates
//
//  Created by samosys on 22/09/20.
//  Copyright © 2020 samosys. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

class SighInViewController: UIViewController {
    
    @IBOutlet weak var viewRound: UIView!
    @IBOutlet weak var superViewRound: UIView!
    @IBOutlet weak var txtEmail: SkyFloatingLabelTextField!
    @IBOutlet weak var txtPasword: SkyFloatingLabelTextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        viewRound.layer.cornerRadius = 30
        viewRound.clipsToBounds = true
        viewRound.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
    }
    
    //MARK: - Custom Method
    
    @IBAction func forgotPassword(_ sender: Any) {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyBoard.instantiateViewController(withIdentifier: "ForgotPasswordViewController") as! ForgotPasswordViewController
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func signIn(_ sender: Any) {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyBoard.instantiateViewController(withIdentifier: "TabbarViewController") as! TabbarViewController
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func signUp(_ sender: Any) {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyBoard.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
}
