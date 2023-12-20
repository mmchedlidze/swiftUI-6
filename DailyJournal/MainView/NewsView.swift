//
//  NewsView.swift
//  DailyJournal
//
//  Created by Mariam Mchedlidze on 20.12.23.
//

import SwiftUI
struct NewsView: View {
    @StateObject private var viewModel = NewsViewModel()

    var body: some View {
        VStack {
            FormView(viewModel: viewModel)
            ListView(viewModel: viewModel)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
