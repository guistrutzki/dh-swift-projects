//
//  TodoItemTableViewCell.swift
//  BucketList
//
//  Created by Guilherme Strutzki on 07/10/21.
//

import UIKit

class TodoItemTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func update(with item: Item) {
        titleLabel.text = item.title
        accessoryType = item.done ? .checkmark : .none
    }
    
}
