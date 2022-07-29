//
//  DataService.swift
//  Recipe List App
//
//  Created by Kenneth Chatham on 7/21/22.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Recipe] {
        
        // Parse local json file
        
        // Get the url path to the json file within the app bundle
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        // Check if pathString is not nil, otherwise...
        guard pathString != nil else {
            return [Recipe]()
        }
        // Create  a url object pathString can safely be unwrapped due to the above check
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            //Create a data object with the data at the url
            let data = try Data(contentsOf: url)
            
            // Parse the data
            let decoder = JSONDecoder()
            
            // This handles the do catch for decoding the recipe json file
            do {
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                // Set unique IDs for each instance
                for items in recipeData {
                    // Set a unique ID for each recipe in the recipeData array
                    items.id = UUID()
                }
                
                // Return the recipes
                return recipeData
            }
            catch {
                // error with parsing data
                print(error)
            }
        }
        catch {
            // error with getting data
            print(error)
        }
        return [Recipe]()
    }
}
