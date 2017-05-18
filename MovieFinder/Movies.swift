//
//  File.swift
//  MovieFinder
//
//  Created by KimSeunghuk on 2017/05/18.
//  Copyright © 2017 SkrimmApps. All rights reserved.
//

import Foundation
import UIKit

class Movies: NSObject, NSCoding {
    var name: String
    var poster: UIImage!
    var wall: UIImage!
    var keys: [String] = []
    var comment: String
    var amazon: String
    
    init(name: String, poster: UIImage!, wall: UIImage!, keys: [String], comment: String, amazon: String){
        self.name = name
        self.poster = poster
        self.wall = wall
        self.keys = keys
        self.comment = comment
        self.amazon = amazon
    }
    
    required init(coder decoder: NSCoder) {
        self.name = decoder.decodeObject(forKey: "name") as! String
        self.poster = decoder.decodeObject(forKey: "poster") as? UIImage
        self.wall = decoder.decodeObject(forKey: "wall") as? UIImage
        self.keys = (decoder.decodeObject(forKey: "keys") as? [String])!
        self.comment = decoder.decodeObject(forKey: "comment") as! String
        self.amazon = decoder.decodeObject(forKey: "amazon") as! String
    }
    
    func encode(with coder: NSCoder) {
        coder.encode(name, forKey: "name")
        coder.encode(poster, forKey: "poster")
        coder.encode(wall, forKey: "wall")
        coder.encode(keys, forKey: "keys")
        coder.encode(comment, forKey: "comment")
        coder.encode(amazon, forKey: "amazon")
    }
    
}
