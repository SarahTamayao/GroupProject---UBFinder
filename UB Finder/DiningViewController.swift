//
//  DiningViewController.swift
//  UB Finder
//
//  Created by Eric Xie  on 4/27/22.
//

import UIKit

class DiningViewController: UIViewController {
    
    
    @IBOutlet weak var diningRatingStackView: DiningStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Submit(_ sender: Any) {
        print(diningRatingStackView.starsRating)
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
