//
//  ListTableViewController.swift
//  MovieFinder
//
//  Created by KimSeunghuk on 2017/04/25.
//  Copyright © 2017 SkrimmApps. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
    
    
    var sendText: String = ""
    
    let saveData = UserDefaults.standard
    
    class Movies {
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
    }
    
    var madmax = Movies(name: "マッドマックス： 怒りのデスロード", poster: UIImage(named: "mad_max_p.jpg")!, wall: UIImage(named: "mad_max_w.jpg")!, keys: ["怒", "キレ", "ハッチャケ", "はっちゃけ", "ストレス", "眠い"], comment: "”荒野でクレイジーなひと旅を”", amazon: "http://amzn.asia/ja0SqGr")
    
    var snatch = Movies(name: "スナッチ", poster: UIImage(named: "snatch_p.jpg")!, wall: UIImage(named: "snatch_w.jpg")!, keys: ["頭"], comment: "”最後にダイヤモンドを手に入れるのは”", amazon: "http://amzn.asia/7Anj4NN")
    
    var leon = Movies(name: "レオン", poster: UIImage(named: "leon_p.jpeg")!, wall: UIImage(named: "leon_w.jpg")!, keys: ["泣きたい", "暇", "おしゃれ", "ひま"], comment: "”MA-1、チョーカーブームはここから？”", amazon: "http://amzn.asia/90zo5Pa")
    
    var django = Movies(name: "ジャンゴ　繋がれざる者", poster: UIImage(named: "django_p.jpg")!, wall: UIImage(named: "django_w.jpg")!, keys: ["キレ", "ハッチャケ", "はっちゃけ"], comment: "”西部でひと暴れしよう”", amazon: "http://amzn.asia/eQPMgbg")
    
    var who = Movies(name: "ピエロがお前を嘲笑う", poster: UIImage(named: "who_p.jpg")!, wall: UIImage(named: "who_w.jpg")!, keys: ["開発", "プログラミング", "勉強", "IT", "頭"], comment: "”マインドもハッキングされる奇作”", amazon: "http://amzn.asia/3jwDRSD")
    
    var kingsman = Movies(name: "キングスマン", poster: UIImage(named: "kingsman_p.jpg")!, wall: UIImage(named: "kingsman_w.jpg")!, keys: ["ハッチャケ", "はっちゃけ", "暴", "眠い", "楽"], comment: "”007クレイジー版”", amazon:"http://amzn.asia/6yPQ93u")
    
    var socialnetwork = Movies(name: "ソーシャルネットワーク", poster: UIImage(named: "social_p.jpg")!, wall: UIImage(named: "social_w.jpg")!, keys: ["開発", "プログラミング", "勉強", "IT", "頭"], comment: "”ITやるならとりあえすこれ”", amazon: "http://amzn.asia/10FzzxM")
    
    var johnwick = Movies(name: "ジョンウィック", poster: UIImage(named: "johnwick_p.jpg")!, wall: UIImage(named: "johnwick_w.jpg")!, keys: ["何も", "暇", "ひま"], comment: "”現実的すぎるのにカッコいいアクション”", amazon: "http://amzn.asia/6PBeCdM")
    
    var drive = Movies(name: "ドライヴ", poster: UIImage(named: "drive_p.jpg")!, wall: UIImage(named: "drive_w.jpg")!, keys: ["憂鬱", "何も", "暇"], comment: "”メランコリックながらも魅かれる”", amazon: "http://amzn.asia/bYseSxV")
    
    var million = Movies(name: "ミリオンダラーベイビー", poster: UIImage(named: "million_p.jpg")!, wall: UIImage(named: "million_w.jpg")!, keys: ["泣きたい", "何も", "涙"], comment: "”ボクシング映画と思いきや涙”", amazon: "http://amzn.asia/345XnvH")
    
    var click = Movies(name: "もしも昨日が選べたら", poster: UIImage(named: "click_p.jpg")!, wall: UIImage(named: "click_w.jpg")!, keys: ["笑", "泣きたい", "何も", "涙", "楽"], comment: "”笑って泣きたいならばこれを”", amazon: "http://amzn.asia/4KwOOgO")
    
    var greenmile = Movies(name: "グリーンマイル", poster: UIImage(named: "greenmile_p.jpg")!, wall: UIImage(named: "greenmile_w.jpg")!, keys: ["泣きたい", "何も", "涙"], comment: "”開発主が初めて号泣した作品”", amazon: "http://amzn.asia/aSGAQND")
    
    var identity = Movies(name: "アイデンティティー", poster: UIImage(named: "identity_p.jpeg")!, wall: UIImage(named: "identity_w.jpg")!, keys: ["刺激", "頭", "雨"], comment: "”究極の犯人は誰だ系映画”", amazon: "http://amzn.asia/1PVk3IU")
    
    var grand = Movies(name: "グランドブダペストホテル", poster: UIImage(named: "grand_p.jpg")!, wall: UIImage(named: "grand_w.jpg")!, keys: ["美術館", "おしゃれ", "暇", "ひま"], comment: "”美術作品”", amazon: "http://amzn.asia/8F9IVGL")
    
    var longest = Movies(name: "ロンゲストヤード", poster: UIImage(named: "longest_p.jpg")!, wall: UIImage(named: "longest_w.jpg")!, keys: ["笑", "運動", "スポーツ", "楽"], comment: "”刑務所で生まれる絆と笑い”", amazon: "http://amzn.asia/6XVAqW9")
    
    var fightclub = Movies(name: "ファイトクラブ", poster: UIImage(named: "fightclub_p.jpg")!, wall: UIImage(named: "fightclub_w.jpg")!, keys: ["刺激", "頭", "暴", "はっちゃけ", "ひま", "暇"], comment: "”ネタバレがあるのでレビューは見ないこと”", amazon: "http://amzn.asia/iwT7Dtr")
    
    var deadpool = Movies(name: "デッドプール", poster: UIImage(named: "deadpool_p.jpg")!, wall: UIImage(named: "deadpool_w.jpg")!, keys: ["刺激", "暴", "はっちゃけ", "ひま", "暇", "うんち", "うんこ"], comment: "”ふざけすぎ笑笑”", amazon: "http://amzn.asia/0J7X5eb")
    
    var wolfof = Movies(name: "ウルフ・オブ・ウォールストリート", poster: UIImage(named: "wolfof_p.jpg")!, wall: UIImage(named: "wolfof_w.jpg")!, keys: ["刺激", "暴", "はっちゃけ", "ひま", "暇", "頭", "勉強"], comment: "”経済入門”", amazon: "http://amzn.asia/6cQlDtQ")
    
    var shawshank = Movies(name: "ショーシャンクの空に", poster: UIImage(named: "shawshank_p.jpg")!, wall: UIImage(named: "shawshank_w.jpg")!, keys: ["ひま", "暇", "泣きたい"], comment: "”感動しかしない”", amazon: "http://amzn.asia/i7lsOpx")
    
    var dataList: [Movies] = []
    var search: [Movies] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataList = [madmax, snatch, leon, django, socialnetwork, who, kingsman, johnwick, drive, million, click, greenmile, identity, grand, longest, fightclub, deadpool, wolfof, shawshank]
        
        for data in dataList {
            for key in data.keys {
                if sendText.contains(key){
                    search.append(data)
                    break
                }
            }
            
        }
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        tableView.register(UINib(nibName: "ListTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return search.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ListTableViewCell
        
        cell.poster.setBackgroundImage(search[indexPath.row].poster, for: UIControlState.normal)
        cell.title.setTitle(search[indexPath.row].name, for: UIControlState.normal)
        cell.amazon = search[indexPath.row].amazon
        cell.wall.image = search[indexPath.row].wall
        cell.comment.text = search[indexPath.row].comment
        cell.selectionStyle = .none
        
        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 280
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
