//
//  DiningViewController.swift
//  UB Finder
//
//  Created by Eric Xie  on 4/27/22.
//

import UIKit
import Parse

class DiningViewController: UIViewController {
    
    
    @IBOutlet weak var diningRatingStackView: DiningStackView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Submit(_ sender: Any) {
        print(diningRatingStackView.starsRating)
        
        let post = PFObject(className: "diningRatings")
        
        post["ratings"] = diningRatingStackView.starsRating
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
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
