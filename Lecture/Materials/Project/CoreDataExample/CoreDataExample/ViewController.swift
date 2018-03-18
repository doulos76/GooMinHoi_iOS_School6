//
//  ViewController.swift
//  CoreDataExample
//
//  Created by Giftbot on 2017. 6. 26..
//  Copyright © 2017년 Giftbot. All rights reserved.
//

import UIKit
import CoreData

final class ViewController: UIViewController {
  private let container = AppDelegate.instance.persistentContainer
  private var context: NSManagedObjectContext { return self.container.viewContext }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    /***************************************************
     기본 Noti 3가지
     - .NSManagedObjectContextObjectsDidChange
     - .NSManagedObjectContextWillSave
     - .NSManagedObjectContextDidSave
     ***************************************************/
    NotificationCenter.default.addObserver(
      self, selector: #selector(contextDidChange), name: .NSManagedObjectContextObjectsDidChange, object: context
    )
    
    // Data Handling
    deleteAll()
    
    addPerson(name: "IU", age: 25)
    addPerson(name: "수지", age: 24)
    addPerson(name: "설현", age: 23)
    fetchData()
    
    changeName(from:"IU", to:"아이유")
    fetchData()
    
    deletePerson(name: "수지")
    fetchData()
    
    // 속도를 위해 save 를 자주 하지 않기도 함
    // saveData() = AppDelegate.instance.saveContext()
  }
}


//MARK: - Data Handler

extension ViewController {
  private func addPerson(name: String, age: Int) {
    let person = NSEntityDescription.insertNewObject(forEntityName: "Person", into: context) as! Person
    person.name = name
    person.age = Int32(age)
    
    saveData()
  }
  
  private func fetchData() {
    print("\n===== fetch data =====")
    let request: NSFetchRequest<Person> = Person.fetchRequest()
    do {
      let result = try context.fetch(request)
      _ = result.map { print("name : ", $0.name ?? "None", "age : \($0.age)") }
    } catch let error {
      print("Fetch Data Error :", error)
    }
    print("=====     end    =====\n")
  }
  
  private func changeName(from: String, to: String) {
    let request: NSFetchRequest<Person> = Person.fetchRequest()
    request.predicate = NSPredicate(format: "name = %@", from)
    
    if let result = try? context.fetch(request) {
      _ = result.map { $0.name = to }
      saveData()
    }
  }
  
  private func deletePerson(name: String) {
    let request: NSFetchRequest<Person> = Person.fetchRequest()
    request.predicate = NSPredicate(format: "name = %@", name)
    guard let result = try? context.fetch(request) else { return }
    
    _ = result.map { context.delete($0) }
    saveData()
  }
  
  func deleteAll() {
    let request: NSFetchRequest<Person> = Person.fetchRequest()
    guard let result = try? context.fetch(request) else { return }
    
    _ = result.map { context.delete($0) }
    saveData()
  }
  
  private func saveData() {
    do {
      try context.save()
    } catch {
      print("Error : \(error)")
    }
  }
}


// MARK: - Notification Event Handler

extension ViewController {
  @objc private func contextDidChange(_ noti: Notification) {
    guard let userInfo = noti.userInfo else { return }
    
    if let obj = userInfo[NSInsertedObjectsKey] as? Set<NSManagedObject> {
      print("\n##### InsertedObject #####n")
      print(obj)
    }
    if let obj = userInfo[NSUpdatedObjectsKey] as? Set<NSManagedObject> {
      print("\n##### UpdatedObject #####n")
      print(obj)
    }
    if let obj = userInfo[NSDeletedObjectsKey] as? Set<NSManagedObject> {
      print("\n##### DeletedObject #####n")
      print(obj)
    }
    print("\n##############\n")
  }
}
