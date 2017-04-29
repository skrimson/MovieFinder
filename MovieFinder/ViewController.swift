//
//  ViewController.swift
//  MovieFinder
//
//  Created by KimSeunghuk on 2017/04/22.
//  Copyright © 2017 SkrimmApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var searchTextField: UITextField!
    
    //テキストを次の画面に送る
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "listTableView" {
            let listTableViewController: ListTableViewController = segue.destination as! ListTableViewController
            listTableViewController.sendText = self.searchTextField.text!
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

