//
//  TaskView.swift
//  StoreListNavigation
//
//  Created by Christopher Gonzalez on 2024-07-07.
//

import SwiftUI

struct TaskView: View {
    var body: some View {
        VStack {
            Text("Task View")
                .font(.largeTitle)
                .padding()
                .navigationTitle("Tasks")
        }
    }
}

#Preview {
    TaskView()
}
