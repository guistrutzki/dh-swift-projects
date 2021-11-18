//
//  ItemsTodoTableViewController.swift
//  BucketList
//
//  Created by Guilherme Strutzki on 07/10/21.
//

import UIKit

class ItemsTodoTableViewController: UITableViewController {
    let persistence = CoreDataPersistence()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupRegisterNibCell()
        persistence.fetchItems()
        tableView.reloadData()
    }
    
    private func setupRegisterNibCell() {
        let cellNib = UINib(nibName: String(describing: TodoItemTableViewCell.self), bundle: Bundle.main)
        tableView.register(cellNib, forCellReuseIdentifier: String(describing: TodoItemTableViewCell.self))
    }

    @IBAction func didTapAddItem(_ sender: Any) {
        var textField = UITextField()
        let alert = UIAlertController(title: "Adicionar novo item", message: nil, preferredStyle: .alert)
        
        let addItemAction = UIAlertAction(title: "Criar", style: .default) { [weak self] action in
            guard let self = self else {return}
            guard let title = textField.text?.trimmingCharacters(in: .whitespacesAndNewlines) else {return}
            
            let item = Item(context: CoreDataPersistence.context)
            item.title = title
            
            self.persistence.save(newItem: item)
            self.reloadLastItem()
        }
        
        let cancelAction = UIAlertAction(title: "Cancelar", style: .cancel)
        
        alert.addAction(addItemAction)
        alert.addAction(cancelAction)
        
        alert.addTextField { alertTextField in
            alertTextField.placeholder = "Criar nova tarefa"
            textField = alertTextField
        }
        
        present(alert, animated: true, completion: nil)
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persistence.items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell =
                tableView
                    .dequeueReusableCell(
                        withIdentifier: String(describing: TodoItemTableViewCell.self),
                        for: indexPath
                    ) as? TodoItemTableViewCell
        else {
            return UITableViewCell()
        }
        
        let item = persistence.items[indexPath.row]
        cell.update(with: item)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        persistence.toggleItem(at: indexPath.row)
        tableView.deselectRow(at: indexPath, animated: true)
        tableView.reloadData()
    }
    
    func reloadLastItem() {
        tableView.performBatchUpdates({
            let lastRow = max(tableView.numberOfRows(inSection: 0), 0)
            tableView.insertRows(at: [IndexPath(row: lastRow, section: 0)], with: .automatic)
        }, completion: nil)
    }
}
