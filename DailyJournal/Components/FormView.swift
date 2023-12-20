//
//  FormView.swift
//  DailyJournal
//
//  Created by Mariam Mchedlidze on 20.12.23.
//

import SwiftUI

struct FormView: View {
    @ObservedObject var viewModel: NewsViewModel 

    var body: some View {
        Form {
            Section(header: Text("News Entry")) {
                TextField("Title", text: $viewModel.title)
                TextField("News", text: $viewModel.news)
                DatePicker("Date", selection: $viewModel.selectedDate, displayedComponents: .date)
            }

            Section {
                Button(action: {
                    viewModel.saveNewsEntry()
                }) {
                    Text("Save")
                        .frame(width: 100, height: 40)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .frame(maxWidth: .infinity, alignment: .center)
            }
        }
    }
}

struct FormViewPreviews: PreviewProvider {
    static var previews: some View {
        FormView(viewModel: NewsViewModel())
    }
}
