//
//  ClassListView.swift
//  StudentRegistry
//
//  Created by Luigi Emanuele Zippo on 20/06/25.
//

import SwiftUI

struct ClassListView: View {

    @State private var viewModel = ClassListViewModel()
    @State private var selectedClass: ClassModel?

    var body: some View {
        
        NavigationSplitView {
            
            List(viewModel.classes) { classItem in
                NavigationLink("\(classItem.gradeLevel) – \(classItem.section)", destination: ClassDetailView(selectedClass: classItem))
            }
            .navigationTitle("Classi")
            .onAppear {
                viewModel.fetchClasses()
            }
        } detail: {
            if let selectedClass {
                ClassDetailView(selectedClass: selectedClass)
            } else {
                Text("Please, select a class.")
                    .foregroundColor(.secondary)
            }
        }
    }
}


#Preview {
    ClassListView()
}
