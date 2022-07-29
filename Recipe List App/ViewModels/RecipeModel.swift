//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Kenneth Chatham on 7/21/22.
//

import Foundation

class RecipeModel: ObservableObject {
    
    
    // Declare a list of recipe objects that will be observed
    @Published var recipes = [Recipe]()
    
    init() {
        
        // Create an instance of data service and get the data
        // let service = DataService()
        
        // lets set recipes = to the return of service.getLocalData
        // self.recipes = service.getLocalData()
        
        // The above could be done like:
        // self.recipes = DataService().getLocalData()
        // This would be if only called once
        
        // Also if getLocalData is declared static the call can be direct:
         self.recipes = DataService.getLocalData()
    }
}
