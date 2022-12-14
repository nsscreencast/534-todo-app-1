//
//  Todo.swift
//  SimpleTodo
//
//  Created by Ben Scheirman on 7/29/22.
//

import Foundation

struct Todo: Identifiable, Codable {
    var id = UUID()

    var text: String
    var completedAt: Date?

    var isCompleted: Bool {
        completedAt != nil
    }

    mutating func toggleCompleted() {
        completedAt = isCompleted ? nil : Date()
    }
}

extension Todo {
    init(_ text: String, completedAt: Date? = nil) {
        self.text = text
        self.completedAt = completedAt
    }
}

extension Array where Element == Todo {
    static var sample: Self {
        [
            .init("Wash the car"),
            .init("Walk the dogs"),
            .init("Buy groceries"),
            .init("Record a screencast", completedAt: Date())
        ]
    }
}
