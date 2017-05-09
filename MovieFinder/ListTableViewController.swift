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
    
    class Movies {
        var name: String
        var poster: UIImage!
        var wall: UIImage!
        var keys: [String] = []
        
        init(name: String, poster: UIImage!, wall: UIImage!, keys: [String]){
            self.name = name
            self.poster = poster
            self.wall = wall
            self.keys = keys
        }
    }
    
    var madmax = Movies(name: "Mad Max: Fury Road", poster: UIImage(named: "mad_max_p.jpg")!, wall: UIImage(named: "mad_max_w.jpg")!, keys: ["怒", "キレ"])
    
    var snatch = Movies(name: "Snatch", poster: UIImage(named: "snatch_p.jpg")!, wall: UIImage(named: "snatch_w.jpg")!, keys: ["おしゃれ"])
    
    var dataList: [Movies] = []
    var search: [Movies] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataList = [madmax, snatch]
        
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
        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
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
