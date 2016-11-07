//
//  HistoryViewController.swift
//  Dummy
//
//  Created by sukhjeet singh sandhu on 04/11/16.
//  Copyright © 2016 sukhjeet singh sandhu. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {

    @IBOutlet weak var tableView: HistoryTableView!
    var data = [["John", "Added", "+", "2 minutes ago", "Shoes"], ["John", "Sold", "-", "1 minutes ago", "Shoes"], ["John", "Sold", "-", "1 minutes ago", "5"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.estimatedRowHeight = 115
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    @IBAction func dismiss(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
}

extension HistoryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "historyCell") as! HistoryTableViewCell
        if indexPath.row > 0 {
            cell.configureCell(data: data[indexPath.row - 1])
        }
        return cell
    }
}
