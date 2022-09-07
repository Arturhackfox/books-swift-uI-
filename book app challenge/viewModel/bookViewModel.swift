//
//  bookViewModel.swift
//  book app challenge
//
//  Created by Arthur Sh on 05.09.2022.
//

import Foundation



class BookViewModel:ObservableObject, Identifiable {
    
    @Published var books = [Book]()
    
    init(){
        
        self.books = DataFetch.FetchData()
       
        
    }
    /// Update the specified book's rating. Does nothing if `forId` is invalid.
    func updateRating(forId: Int, rating: Int) {
        if let index = books.firstIndex(where: { $0.id == forId }) {
            books[index].rating = rating
        }
    }
    
    /// Update the specified book's favourite status. Does nothing if `forId` is invalid.
    func updateFavourite(forId: Int) {
        if let index = books.firstIndex(where: { $0.id == forId }) {
            books[index].isFavourite.toggle()
        }
    }
    
    /// Update the specified book's current page. Does nothing if `forId` is invalid.
    func updatePage(forId: Int, page: Int) {
        if let index = books.firstIndex(where: { $0.id == forId }) {
            books[index].currentPage = page
        }
    }
 
}
