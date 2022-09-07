//
//  bookCover.swift
//  book app challenge
//
//  Created by Arthur Sh on 05.09.2022.
//

import Foundation


struct Book: Decodable, Identifiable{
    
    var title = "Test Title"
    var author = "Peter Tester"
    var isFavourite = false
    var currentPage = 1
    var rating = 3
    var id = 1
    var content = ["I am test book with worthless content insode"]
}
