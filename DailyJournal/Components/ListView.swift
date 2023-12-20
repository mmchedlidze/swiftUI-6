//
//  ListView.swift
//  DailyJournal
//
//  Created by Mariam Mchedlidze on 20.12.23.
//

import SwiftUI

struct ListView: View {
    @ObservedObject var viewModel: NewsViewModel

    var body: some View {
        List {
            ForEach(viewModel.newsEntries) { entry in
                HStack{
                    VStack(alignment: .leading, spacing: 12) {
                        Text(entry.title)
                            .font(.headline)
                        Text(entry.news) }
                    Spacer()
                    
                    Text(viewModel.formatDate(entry.date))
                        .foregroundColor(.secondary)
                }
                .padding()
            }
        }
        .listStyle(PlainListStyle())
        .background(
            viewModel.newsEntries.isEmpty ?
            Text("No News")
                .foregroundColor(.gray)
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center) : nil
        )
    }
}

struct ListViewPreviews: PreviewProvider {
    static var previews: some View {
        ListView(viewModel: NewsViewModel())
    }
}
