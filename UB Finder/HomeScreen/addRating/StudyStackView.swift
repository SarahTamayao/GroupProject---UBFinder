//
//  StudyStackView.swift
//  UB Finder
//
//  Created by Eric Xie  on 5/3/22.
//

import UIKit

class StudyStackView: UIStackView {

    var starsRating = 0
    var starsEmptyPicName = "star"
    var starsFilledPicName = "Filled Star"
    var status = false
    
    override func draw(_ rect: CGRect) {
        
        let myViews = self.subviews.filter{$0 is UIButton}
        var starTag = 0
        
        for theView in myViews {
            
            if let theButton = theView as? UIButton{
                
                theButton.setImage(UIImage(named: starsEmptyPicName), for: .normal)
                theButton.addTarget(self, action: #selector(self.pressed(sender:)), for: .touchUpInside)
                starTag = starTag + 1
                theButton.tag = starTag
            }
        }
    }
    
    @objc func pressed(sender: UIButton){
        
        
        starsRating = sender.tag
        let myViews = self.subviews.filter{$0 is UIButton}
        for theView in myViews {

            if let theButton = theView as? UIButton{
                
                    
                    if theButton.tag > sender.tag{
                        
                        theButton.setImage(UIImage(named: starsEmptyPicName), for: .normal)
                        
                    }else if theButton.tag == 1 && theButton.tag == sender.tag && status == true {

                        theButton.setImage(UIImage(named: starsEmptyPicName), for: .normal)
                        status = false
                        starsRating = 0
                        
                    }else{
                    
                        theButton.setImage(UIImage(named: starsFilledPicName), for: .normal)
                        status = true
                }
            }
        }
    }
}
