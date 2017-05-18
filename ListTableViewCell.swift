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
    
    let saveData = UserDefaults.standard
    
    var my = [Movies]()
    
    @IBAction func pushTitleButton() {
        let url = URL(string:amazon)
        if( UIApplication.shared.canOpenURL(url!) ) {
            UIApplication.shared.open(url!)
        }
    }
    
    @IBAction func pushPoster() {
        let url = URL(string:amazon)
        if( UIApplication.shared.canOpenURL(url!) ) {
            UIApplication.shared.open(url!)
        }
    }
    
    @IBAction func saveMovie(){
        let temp = Movies(name: title.currentTitle!, poster: poster.currentBackgroundImage!, wall: wall.image!, keys: [""], comment: comment.text!, amazon: amazon)
        
        if let data = UserDefaults.standard.data(forKey: "movie"),
            let my = NSKeyedUnarchiver.unarchiveObject(with: data) as? [Movies] {
            for i in my {
                if i.name == temp.name{
                    return
                }
            }
        }
        
        my.append(temp)
        let encodedData = NSKeyedArchiver.archivedData(withRootObject: my)
        UserDefaults.standard.set(encodedData, forKey: "movie")
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
