//
//  ListTableViewCell.swift
//  MovieFinder
//
//  Created by KimSeunghuk on 2017/04/25.
//  Copyright © 2017 SkrimmApps. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    
    var key: [String] = []
    
    @IBOutlet var commentLabelText: UILabel!
    @IBOutlet var poster: UIButton!
    @IBOutlet var title: UIButton!
    
    @IBAction func pushTitleButton() {
        
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
