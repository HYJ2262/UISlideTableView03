//
//  ViewController.swift
//  UISlideTableView03
//
//  Created by D7703_24 on 2019. 5. 2..
//  Copyright © 2019년 D7703_24. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var myslider: UISlider!
    @IBOutlet weak var myLable: UILabel!
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.delegate = self
        myTableView.dataSource = self
        
        myLable.text = String(Int(myslider.value))
    }

    @IBAction func silderMove(_ sender: Any) {
        myLable.text = String(Int(myslider.value))
        myTableView.reloadData()
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RE", for: indexPath)
        
        cell.textLabel?.text = String(myslider.value)
        return cell
    }


}

