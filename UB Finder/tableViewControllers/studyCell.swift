//
//  studyCell.swift
//  UB Finder
//
//  Created by Eric Xie  on 5/9/22.
//

import UIKit

class studyCell: UITableViewCell {

    @IBOutlet weak var locationName: UILabel!
    @IBOutlet weak var studyRatings: UILabel!
    @IBOutlet weak var locationPic: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
