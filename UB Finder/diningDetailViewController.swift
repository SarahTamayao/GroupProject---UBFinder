//
//  detailViewController.swift
//  UB Finder
//
//  Created by Eric Xie  on 5/10/22.
//

import UIKit

class diningDetailViewController: UIViewController {


    @IBOutlet weak var placePic: UIImageView!
    
    @IBOutlet weak var logoPic: UIImageView!
    
    @IBOutlet weak var nameOfPlace: UILabel!
    
    @IBOutlet weak var descriptionOfPlace: UILabel!
    
    @IBOutlet weak var RatingOfPlace: UILabel!
    
    @IBOutlet weak var GraphOfPlace: UIImageView!
    
    var logoOfPlace = UIImage()
    var placeName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        nameOfPlace.text = placeName
        
    }
    
    @IBAction func addRatingPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "diningAddRatingSegue", sender: self)
    }
    
        // Create a variable to store the name the user entered on textField
            
        // Create a new variable to store the instance of the SecondViewController
        // set the variable from the SecondViewController that will receive the data
        

        
        
        
        
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
