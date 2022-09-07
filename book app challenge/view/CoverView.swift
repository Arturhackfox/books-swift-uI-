//
//  CoverView.swift
//  book app challenge
//
//  Created by Arthur Sh on 06.09.2022.
//

import SwiftUI

struct CoverView: View {
    var book:Book
    @State var isBookFav = false
    var body: some View {
        
        ZStack{
            Rectangle()
                .foregroundColor(.white)
            VStack(alignment: .leading){
                HStack {
                    Text(book.author)
                        .font(.largeTitle)
                    .bold()
                    Spacer()
                    
                    if isBookFav == true {
                    Image(systemName: "star")
                        .padding(.horizontal, 18)
                        .onTapGesture {
                            isBookFav.toggle()
                        }
                    } else if isBookFav == false {
                        Image(systemName: "star.fill")
                            .onTapGesture(perform: {
                                isBookFav.toggle()
                            })
                            .foregroundColor(.yellow)
                            .padding(.horizontal, 18)
                    }
                }
                
                Text(book.title)
                    .font(.subheadline)
                    .italic()
                
                Image("cover\(book.id)")
                    .resizable()
                    .scaledToFit()
                
            }
            .padding(18)
        }
        .frame(width: 350, height: 550)
        .cornerRadius(16)
        .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.6), radius: 5, x: -5, y: 5)
    }
    
    
}




struct CoverView_Previews: PreviewProvider {
    static var previews: some View {
        CoverView(book: Book())
            .environmentObject(BookViewModel())
    }
}
