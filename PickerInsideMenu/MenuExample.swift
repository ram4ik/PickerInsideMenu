//
//  MenuExample.swift
//  PickerInsideMenu
//
//  Created by Ramill Ibragimov on 28.07.2020.
//

import SwiftUI

struct MenuExample: View {
    @State private var selection: Int = 0
    
    var body: some View {
        NavigationView {
            Text("Hello SwiftUI")
                .toolbar {
                    Menu("Add") {
                        Button(action: {}) {
                            Label("New folder", systemImage: "folder")
                            Label("New file", systemImage: "doc")
                        }
                        
                        Picker("Sort by", selection: $selection) {
                            Text("Date").tag(0)
                            Text("Location").tag(1)
                        }
                    }
                }
        }
    }
}

struct MenuExample_Previews: PreviewProvider {
    static var previews: some View {
        MenuExample()
    }
}
