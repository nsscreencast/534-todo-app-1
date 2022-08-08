//
//  TodoRow.swift
//  SimpleTodo
//
//  Created by Ben Scheirman on 7/29/22.
//

import SwiftUI

struct TodoRow: View {
    @Binding var todo: Todo

    var body: some View {
        HStack {
            Rectangle().frame(width: 30, height: 30)
                .onTapGesture {
                    todo.toggleCompleted()
                }
            Text(todo.text)
                .strikethrough(todo.isCompleted)
                .foregroundColor(todo.isCompleted ? .secondary : .primary)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding()
    }
}

struct TodoRow_Previews: PreviewProvider {

    struct DemoView: View {
        @State var todo = Todo("Get the groceries")
        var body: some View {
            TodoRow(todo: $todo)
        }
    }

    static var previews: some View {
        Group {
            DemoView()
                .previewLayout(.fixed(width: 375, height: 160))
        }
    }
}
