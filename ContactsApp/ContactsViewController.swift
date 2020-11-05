//
//  ViewController.swift
//  ContactsApp
//
//  Created by Maitree Bain on 11/5/20.
//  Copyright © 2020 Maitree Bain. All rights reserved.
//

import UIKit

enum Section: Hashable {
    case contact
}

class ContactsViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    typealias DataSource = UITableViewDiffableDataSource<Section, Contact>
    private var dataSource: DataSource!
    
    private var contacts = Contact.getContacts()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureDataSource()
        
    }
    
    func configureDataSource() {
        dataSource = DataSource(tableView: tableView, cellProvider: { (tableView, indexPath, contact) -> UITableViewCell? in
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
            cell.textLabel?.text = "Name: \(contact.fullName)"
            cell.detailTextLabel?.text = "Phone: \(contact.phone)"
            
            return cell
        })
        
        var snapshot = NSDiffableDataSourceSnapshot<Section, Contact>()
        snapshot.appendSections([.contact])
        snapshot.appendItems(contacts)
        dataSource.apply(snapshot, animatingDifferences: true)
    }
    
    
    
}

