//
//  CoreDataPersistence.swift
//  BucketList
//
//  Created by Guilherme Strutzki on 07/10/21.
//

import UIKit
import CoreData

class CoreDataPersistence {
    var items = [Item]()
    
    private static var AppDelegate: AppDelegate {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            fatalError("Error to access app delegate")
        }
        
        return appDelegate
    }
    
    static var context: NSManagedObjectContext {
        return CoreDataPersistence.AppDelegate.persistentContainer.viewContext
    }
    
    func saveContext() {
        CoreDataPersistence.AppDelegate.saveContext()
    }
    
    func save(newItem item: Item){
        items.append(item)
        saveContext()
    }
    
    func fetchItems() {
        let request: NSFetchRequest<Item> = Item.fetchRequest()
        
        do {
            self.items = try CoreDataPersistence.context.fetch(request)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func toggleItem(at index: Int) {
        items[index].done.toggle()
    }
}
