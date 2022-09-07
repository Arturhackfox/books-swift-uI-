//
//  detailView.swift
//  book app challenge
//
//  Created by Arthur Sh on 06.09.2022.
//

import SwiftUI

struct detailView: View {
    @EnvironmentObject var model:BookViewModel
    var books:Book
    
    @State var selectedRating = 0
    @State var isFav = false
    
    var body: some View {
        TabView() {
            VStack{
            Text(books.title)
                .font(.largeTitle)
                .bold()
            Text("Read Now!")
                .font(.title)
            
                Image("cover\(books.id)")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 350)
                
                Text("Mark for later!")
                    .font(.title2)
                    .padding()
                    
                Button {
                    model.updateFavourite(forId: books.id)
                } label: {
                    Image(systemName: books.isFavourite ? "star.fil" : "star")
                }.accentColor(.yellow)

            
             
                Picker("Rate\(books.title)", selection: $selectedRating) {
                    Text("1").tag(1)
                    Text("2").tag(2)
                    Text("3").tag(3)
                    Text("4").tag(4)
                    Text("5").tag(5)
                }
                .pickerStyle(.segmented)
                .frame(width: 300)
                .cornerRadius(14)
                .padding(.top, 20)

                
                
                
            }//vstack edge
        }
    }
}

struct detailView_Previews: PreviewProvider {
    static var previews: some View {
        detailView(books: Book())
    }
}
