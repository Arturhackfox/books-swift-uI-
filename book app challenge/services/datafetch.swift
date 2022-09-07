//
//  datafetch.swift
//  book app challenge
//
//  Created by Arthur Sh on 05.09.2022.
//

import Foundation


class DataFetch {

static func FetchData() -> [Book]{

          let pathString = Bundle.main.path(forResource: "data", ofType: "json")
          guard pathString != nil else {
              return [Book]()
          }
          let url = URL(fileURLWithPath: pathString!)
          do{
          let data = try Data(contentsOf: url)
              
              let decoder = JSONDecoder()
              
              do{
             let BookData = try decoder.decode([Book].self, from: data)
        
                  
                  
                  
                  
                  return BookData
                  
              }catch{
                  print(error)
              }
              
          }catch{
              print(error)
          }
          
          
       return [Book]()
      }
}
