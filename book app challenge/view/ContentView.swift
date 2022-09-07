//
//  ContentView.swift
//  book app challenge
//
//  Created by Arthur Sh on 04.09.2022.
//

import SwiftUI


struct ContentView: View {
    
    @EnvironmentObject var model:BookViewModel
    
    var body: some View {
        
        NavigationView{
            ScrollView{
                LazyVStack{
                    
                    ForEach(model.books){ b in
                        NavigationLink {
                           detailView(books: b)
                        } label: {
                            CoverView(book: b)
                        }.buttonStyle(.plain)

                    }
                }.padding()
                
                
                
            }
            .navigationTitle("My library")

        }
                
            }
        }
        
    





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(BookViewModel())
    }
}
