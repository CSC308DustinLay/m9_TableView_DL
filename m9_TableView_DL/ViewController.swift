//
//  ViewController.swift
//  m9_TableView_DL
//
//  Created by Heather Bishop on 4/2/26.
//

import UIKit

class ViewController: UIViewController
{
    let fruits = ["apple", "banana", "orange", "cherry", "strawberry"]
    let veggies = ["broccoli", "carrot", "celery", "pepper", "onion"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        switch indexPath.section
        {
        case 0:
            print("You selected \(fruits[indexPath.row])")
        case 1:
            print("You selected \(veggies[indexPath.row])")
        default:
            break
        }
    }
}

extension ViewController: UITableViewDataSource
{
    //Sets number of sections
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("#1", #function)
        
        switch section
        {
        case 0:
            return fruits.count
        case 1:
            return veggies.count
        default:
            return 0
        }
    }
    
    //this method is called repeatedly until something
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("#1", #function, indexPath)
        //#1 get or reuse a cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        //#2 put data into cell
        switch indexPath.section
        {
        case 0:
            cell.textLabel?.text = fruits[indexPath.row]
        case 1:
            cell.textLabel?.text = veggies[indexPath.row]
        default:
            break
        }
        //#3 return cell
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section{
        case 0:
            return "Fruits"
        case 1:
            return "Veggies"
        default:
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        switch section{
        case 0:
            return "Fruits are yummy"
        case 1:
            return "Veggies are also yummy"
        default:
            return nil
        }
    }
}
