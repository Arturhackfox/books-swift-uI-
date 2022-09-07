//
//  a.swift
//  book app challenge
//
//  Created by Arthur Sh on 06.09.2022.
//

import SwiftUI

struct a: View {
    @EnvironmentObject var model:BookViewModel
    var body: some View {
        
        GeometryReader { geo in
            ForEach(0..<model.books.count, id: \.self){index in
            
           
                ZStack {
                    Rectangle()
                        .foregroundColor(.gray)
                    
                    
                        
                        VStack(alignment: .leading){
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
                
            
            .frame(width: geo.size.width - 40, height: geo.size.height - 100)
            .cornerRadius(12)
            .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.6), radius: 5, x: -5, y: 5)
        .position(x: 195, y: 350)
        }
    }
}

struct a_Previews: PreviewProvider {
    static var previews: some View {
        a().environmentObject(BookViewModel())
    }
}
