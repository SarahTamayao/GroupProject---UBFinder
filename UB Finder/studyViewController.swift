//
//  studyViewController.swift
//  UB Finder
//
//  Created by Eric Xie  on 5/3/22.
//

import UIKit

class studyViewController:
    UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var studyStack: StudyStackView!

    @IBAction func submitButton(_ sender: Any) {
        
        print(studyStack.starsRating)
        
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        
    super.didReceiveMemoryWarning()
        
    }
    
    
}
