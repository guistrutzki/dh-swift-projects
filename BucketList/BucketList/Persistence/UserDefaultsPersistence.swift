//
//  UserDefaultsPersistence.swift
//  BucketList
//
//  Created by Guilherme Strutzki on 07/10/21.
//

//import Foundation
//
//class UserDefaultsPersistence {
//    let defaults = UserDefaults.standard
//    var items = [Item]()
//    let encoder = JSONEncoder()
//    let decoder = JSONDecoder()
//
//    func fetchItems() {
//        guard let data = defaults.value(forKey: UserDefaults.Keys.TodoItemKey) as? Data else {
//            return
//        }
//
//        do {
//            items = try decoder.decode([Item].self, from: data)
//        } catch {
//            print(error)
//        }
//
//    }
//
//    func save(newItem item: Item) {
//        items.append(item)
//        save()
//    }
//
//    func save() {
//        guard let encodedData = try? encoder.encode(items) else {return}
//        defaults.setValue(encodedData, forKey: UserDefaults.Keys.TodoItemKey)
//    }
//
//    func toggleItem(at index: Int) {
//        save()
//        items[index].done.toggle()
//    }
//}
