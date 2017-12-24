//
//  ViewController.swift
//  TableView Test
//
//  Created by 河野遥希 on 2017/12/09.
//  Copyright © 2017年 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let people = [
        ("Bucky Roberts", "New York"),
        ("Lisa Tucker", "Alabama"),
        ("Emma Hotpocket", "Texas")
    ]
    
    let videos = [
        ("Andoroid App Development", "74 videos"),
        ("C++ for Beginners", "87 videos"),
        ("Java", "142 videos"),
        ("Python Programming", "63 videos"),
        ("Web Design", "68 videos")
    ]
    
    //how many sections are in your table
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    //return Int, how many rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return people.count
        } else {
            return videos.count
        }
    }
    
    //what are the contents of each cells
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        if indexPath.section == 0 {
            var (personName, personLocation) = people[indexPath.row]
            cell.textLabel?.text = personName
        } else {
            var (videoTitle, videoDesc) = videos[indexPath.row]
            cell.textLabel?.text = videoTitle
        }
        return cell
    }
    
    //Give each table section a title
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "People"
        } else {
            return "Videos"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

