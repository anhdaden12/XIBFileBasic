//
//  ViewController.swift
//  tableViewXibCells
//
//  Created by Apple on 11/2/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableVIew: UITableView!
    
    let houseData = ["Arryn", "Baratheon", "Greyjoy", "Lannister", "Martell", "Stark", "Targaryen", "Tully", "Tyrell"]

    let wordsData = ["As high as honor", "Ours is the fury", "We do not sow", "Hear me roar", "Unbowed, unbent, unbroken", "Winter is coming", "fire and blood", "Family, duty, honor", "Growing strong"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "UITableView"
        
        self.tableVIew.dataSource = self
        self.tableVIew.delegate = self
        
        let nibName = UINib(nibName: "TableViewCell", bundle: nil)
        tableVIew.register(nibName, forCellReuseIdentifier: "tableviewcell")
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return houseData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableviewcell", for: indexPath) as! TableViewCell
        cell.commonInit("got_\(indexPath.item)", title: houseData[indexPath.item], sub: wordsData[indexPath.item])
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailVC()
        vc.commonInit("got_bg_\(indexPath.item)", title: houseData[indexPath.item])
        self.navigationController?.pushViewController(vc, animated: true)
        self.tableVIew.deselectRow(at: indexPath, animated: true)
    }
}
