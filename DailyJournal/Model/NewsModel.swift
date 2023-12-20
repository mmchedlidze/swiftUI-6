//
//  NewsModel.swift
//  DailyJournal
//
//  Created by Mariam Mchedlidze on 20.12.23.
//

import SwiftUI

struct NewsEntry: Identifiable {
    let id = UUID()
    var title: String
    var news: String
    var date: Date
}
