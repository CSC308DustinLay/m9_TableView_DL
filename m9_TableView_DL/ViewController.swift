//
//  ViewController.swift
//  m9_TableView_DL
//
//  Created by Heather Bishop on 4/2/26.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("#1", #function)
        
        //displays 100 cells
        return 100
    }
    
    //this method is called repeatedly until something
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("#1", #function, indexPath)
        //#1 get or reuse a cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        //#2 put data into cell
        if indexPath.row < 19
        {
            cell.textLabel?.text = "\(indexPath.section) - \(indexPath.row)"
        }
        //#3 return cell
        return cell
    }
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

