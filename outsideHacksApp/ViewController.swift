//
//  ViewController.swift
//  outsideHacksApp
//
//  Created by ShowalterS18 on 7/23/16.
//  Copyright © 2016 Sam Showalter. All rights reserved.
//

//Sign in viewcontroller 
import UIKit
import Firebase
import FirebaseAuth
import GoogleSignIn


class ViewController: UIPageViewController ,GIDSignInUIDelegate {
    
    //All Vars   GIDSignInButton
    
    @IBOutlet weak var signInView: GIDSignInButton!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       // self.ref = FIRDatabase.database().reference()
        GIDSignIn.sharedInstance().uiDelegate = self
        
        // Uncomment to automatically sign in the user.
        GIDSignIn.sharedInstance().signInSilently()
        
        FIRAuth.auth()?.addAuthStateDidChangeListener { auth, user in
            if let user = user {
                // User is signed in.
                
            } else {
                // No user is signed in.
            }
        }
        
        
        // TODO(developer) Configure the sign-in button look/feel
       
    }
    
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  

    
    

} //last closing bracket for the class

