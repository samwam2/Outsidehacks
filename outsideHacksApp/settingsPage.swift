//
//  settingsPage.swift
//  outsideHacksApp
//
//  Created by ShowalterS18 on 7/24/16.
//  Copyright © 2016 Sam Showalter. All rights reserved.
//

import UIKit
import Foundation
import FirebaseDatabase
import Firebase
import FirebaseAuth

class settingsPage: UIViewController {
    
    let ref = FIRDatabase.database().reference()
    var userUIDForDatabaseScore = ""
    var userName = ""
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.ref = FIRDatabase.database().reference()
        
        if let user = FIRAuth.auth()?.currentUser {
        
             userUIDForDatabaseScore = user.uid;  // The user's ID, unique to the Firebase project.
            userName = user.displayName!;
            // Do NOT use this value to authenticate with
            // your backend server, if you have one. Use
            // getTokenWithCompletion:completion: instead.
        } else {
            // No user is signed in.
        }
        
        //var score = ref.updateChildValues("user/\(userUIDForDatabaseScore)/\(userName)/points")
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
       //FIX!! let refChild = ref.setValue("user/\(userUIDForDatabaseScore)/\(userName)/points: \(score)")
      //  print(refChild)
        
        //makes it auto update
        //refChild.observeEventType(.Value) { (snap: FIRDataSnapshot) in }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
}

