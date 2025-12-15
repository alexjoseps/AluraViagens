//
//  ViewController.swift
//  AluraViagens
//
//  Created by Alex Souza on 02/12/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viagensTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        viagensTableView.dataSource = self
        viagensTableView.delegate = self

        view.backgroundColor = UIColor(red: 30/255, green: 59/255, blue: 119/255, alpha: 1)
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)
        -> Int
    {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)
        -> UITableViewCell
    {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)

        var content = cell.defaultContentConfiguration()
        content.text = "Viagem \(indexPath.row)"

        cell.contentConfiguration = content

        return cell
    }

}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self)?.first as? HomeTableViewHeader
//        headerView?.configuraBackground()
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 300
    }
}
