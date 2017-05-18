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
    
    var movie = [Movies]()
    
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
    
        movie.append(temp)
        let encodedData = NSKeyedArchiver.archivedData(withRootObject: movie)
        UserDefaults.standard.set(encodedData, forKey: "movie")
        let alert = UIAlertController(title: "保存完了", message: "登録が完了しました", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
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
