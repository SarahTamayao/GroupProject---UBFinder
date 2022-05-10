//
//  studyViewController.swift
//  UB Finder
//
//  Created by Eric Xie  on 5/3/22.
//

import UIKit
import Parse

class studyRatingViewController:
    UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var studyStack: StudyStackView!

    @IBAction func submitButton(_ sender: Any) {
        
        print(studyStack.starsRating)
        
        let post = PFObject(className: "studyRatings")
        
        post["ratings"] = studyStack.starsRating
        post["author"] = PFUser.current()!
    
        post.saveInBackground { success, error in
            if success{
                
                self.dismiss(animated: true, completion: nil)
                print("saved!")
                
            }else{
                
                print("error!")
            }
        }
        
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        
    super.didReceiveMemoryWarning()
        
    }
    
    
}
