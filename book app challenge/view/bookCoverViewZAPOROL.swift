//
//  bookCoverView.swift
//  book app challenge
//
//  Created by Arthur Sh on 05.09.2022.
//

import SwiftUI

struct bookCoverView: View {
    
    @EnvironmentObject var model:BookViewModel
    
    
    var body: some View {
        GeometryReader{ geo in
            TabView{
                ForEach(0..<model.books.count, id: \.self){ index in
                    
                    Button {
                        print("")
                    } label: {
                        ZStack {
                            Rectangle()
                                .foregroundColor(.gray)
                            
                            VStack(alignment: .leading){
                                ForEach(0..<model.books.count, id: \.self){index in
                                    Text(model.books[index].title)
                                        .foregroundColor(.black)
                                        .font(.largeTitle)
                                        .bold()
                                    Text(model.books[index].author)
                                        .foregroundColor(.black)
                                        .font(.subheadline)
                                        .italic()
                                }
                            }
                            
                        }
                    }
                    
                    
                    .frame(width: geo.size.width - 40, height: geo.size.height - 100)
                    .cornerRadius(12)
                    .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.6), radius: 5, x: -5, y: 5)
                    .position(x: 195, y: 350)
                }
            }
        }
    }
}



struct bookCoverView_Previews: PreviewProvider {
    static var previews: some View {
        bookCoverView()
            .environmentObject(BookViewModel())
        
    }
}
