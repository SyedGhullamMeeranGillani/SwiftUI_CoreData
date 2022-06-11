//
//  CoreDataManager.swift
//  HelloCoreData
//
//  Created by Syed Ghullam Meeran Gillani on 10/06/2022.
//

import Foundation
import CoreData

struct CoreDataManger {
    
    let persistantContainer : NSPersistentContainer
    
    init(){
        persistantContainer = NSPersistentContainer(name: "CoreDataModel")
        persistantContainer.loadPersistentStores { description, error in
            if let error = error{
                fatalError("fail to store core value \(error.localizedDescription)")
            }
        }
    }
    func saveMovie(title : String){
        let movie = Movie(context: persistantContainer.viewContext)
        
        movie.title = title
        
        do{
            try persistantContainer.viewContext.save()
                print("movie save")
        }catch{
            print("failed to save movie\(error)")
        }
    }
    
    

  
}
