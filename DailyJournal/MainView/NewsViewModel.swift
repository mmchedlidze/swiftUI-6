//
//  NewsViewModel.swift
//  DailyJournal
//
//  Created by Mariam Mchedlidze on 20.12.23.
//

import SwiftUI

final class NewsViewModel: ObservableObject {
    @Published var title = ""
    @Published var news = ""
    @Published var selectedDate = Date()
    @Published var newsEntries: [NewsEntry] = []

    func saveNewsEntry() {
        let newEntry = NewsEntry(title: title, news: news, date: selectedDate)
        newsEntries.append(newEntry)

        title = ""
        news = ""
        selectedDate = Date()
    }
    
    func formatDate(_ date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM d, yyyy"
        return dateFormatter.string(from: date)
    }
}
