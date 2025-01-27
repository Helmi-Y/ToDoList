//
//  ToDoListItemView.swift
//  Todo
//
//  Created by Helmi Yatim on 5/1/24.
//

import SwiftUI

struct ToDoListItemView: View {
    @StateObject var viewModel = ToDoListItemViewViewModel()
    
    let item: ToDoListItem
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text(item.title)
                    .font(.body)
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundStyle(Color(.secondaryLabel))
            }
            
            Spacer()
            
            Button{
                viewModel.toggleIsDone(item: item)
            } label: {
                Image(systemName: item.isDone ? 
                      "checkmark.circle.fill" : "circle")
                .foregroundColor(Color.blue)
            }
        }
    }
}

#Preview {
    ToDoListItemView(item: .init(id: "123",
                                 title: "Get Milk",
                                 dueDate: Date().timeIntervalSince1970,
                                 createdDate: Date().timeIntervalSince1970,
                                 isDone: true))
}
