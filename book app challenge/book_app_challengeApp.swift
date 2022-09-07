//
//  book_app_challengeApp.swift
//  book app challenge
//
//  Created by Arthur Sh on 04.09.2022.
//

import SwiftUI

@main
struct book_app_challengeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(BookViewModel())

        }
    }
}
