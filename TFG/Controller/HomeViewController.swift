//
//  HomeViewController.swift
//  TFG
//
//  Created by Onhilda Benítez Gómez on 23/6/18.
//  Copyright © 2018 Onhilda Benítez Gómez. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func logOutButtonPressed(_ sender: Any)
    {
        //TODO: Log out the user and send them back to WelcomeViewController
        do
        {
            try Auth.auth().signOut()
            //self.performSegue(withIdentifier: "welcomeVC", sender: self)
            navigationController?.popToRootViewController(animated: true)
        }
        catch
        {
            print("Error, there was a problem signing out.")
        }
        
    }
    
}
