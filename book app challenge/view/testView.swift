//
//  testView.swift
//  book app challenge
//
//  Created by Arthur Sh on 06.09.2022.
//

import SwiftUI

struct testView: View {
    var books:Book
    var body: some View {
        background(Color.red)
        Text(books.author)
        
    }
}

struct testView_Previews: PreviewProvider {
    static var previews: some View {
        let model = BookViewModel()
        testView(books: model.books[1])
    }
}
