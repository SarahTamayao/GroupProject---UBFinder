//
//  HomeViewController.swift
//  UB Finder
//
//  Created by Ria Gupta on 5/4/22.
//

import UIKit
import Lottie

class HomeViewController: UIViewController {
    
    var animationView: AnimationView?

    override func viewDidLoad () {
        super.viewDidLoad()

        animationView = .init(name: "67928-studyly")
        animationView?.frame = CGRect(x:0, y:0, width:200, height:200)
        animationView?.contentMode = .scaleAspectFit
        view.addSubview(animationView!)
        animationView?.frame = view.bounds
        animationView?.play()
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
