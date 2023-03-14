//
//  CategoryViewController.swift
//  Magnum
//
//  Created by Tommy on 3/9/23.
//

import UIKit

class CategoryViewController: UIViewController {
    
    // MARK: Variables
    
    lazy private var categories =
    [
        "Dairy Products" : "dairy" ,
        "Fruits and Vegetables" : "vegetables" ,
        "Cookies" : "cookie" ,
        "Soft Drinks" : "drink" ,
        "Meat" : "meat" ,
        "Sweets" : "sweets"
    ]
   
    // MARK: - UI Components

    private let tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(CategoryResultsTableViewCell.self, forCellReuseIdentifier: CategoryResultsTableViewCell.identifier)
        return tableView
    }()

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(tableView)

        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
        tableView.backgroundColor = .systemBackground
        tableView.contentInset = UIEdgeInsets(top: -35, left: 0, bottom: 0, right: 0);
    }
}

extension CategoryViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CategoryResultsTableViewCell.identifier, for: indexPath) as? CategoryResultsTableViewCell else {
            return UITableViewCell()
        }
        let key = Array(categories.keys)[indexPath.row]
        let value = categories[key]
        cell.configure(name: key, imageName: value ?? "")
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let key = Array(categories.keys)[indexPath.row]
        let vc = CategoryResultsViewController(category: key)

        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.navigationBar.tintColor = UIColor(named: "main")
        navigationController?.pushViewController(vc, animated: true)
    }
}
