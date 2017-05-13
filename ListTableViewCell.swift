//
//  ListTableViewCell.swift
//  MovieFinder
//
//  Created by KimSeunghuk on 2017/04/25.
//  Copyright © 2017 SkrimmApps. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    
    @IBOutlet var comment: UILabel!
    @IBOutlet var poster: UIButton!
    @IBOutlet var title: UIButton!
    @IBOutlet var wall: UIImageView!
    var amazon: String!
    
    @IBAction func pushTitleButton() {
        let url = URL(string:amazon)
        if( UIApplication.shared.canOpenURL(url!) ) {
            UIApplication.shared.open(url!)
        }
    }
    
    @IBAction func pushPoster() {
        
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
