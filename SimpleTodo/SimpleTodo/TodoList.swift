//
//  TodoList.swift
//  SimpleTodo
//
//  Created by Ben Scheirman on 7/29/22.
//

import SwiftUI

struct TodoList: View {
    @Binding var todos: [Todo]

    var body: some View {
        List($todos) { $todo in
            TodoRow(todo: $todo)
        }
    }
}


struct TodoList_Previews: PreviewProvider {
    struct DemoView: View {
        @State var todos = [Todo].sample
        var body: some View {
            TodoList(todos: $todos)
        }
    }
    static var previews: some View {
        DemoView()
    }
}
