//
//  ContentView.swift
//  Cockpit
//
//  Created by Alex Scholtes on 10/2/26.
//

import SwiftUI

struct ContentView: View {
    @State private var total = 42
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Cockpit AI Dashboard")
            Text("\(total)")
        }
        .padding()
        .task{ do {
             try String(contentsOfFile: "/Users/alexscholtes/Developer/cockpit/fixtures/milestone-1.jsonl",
                     encoding: .utf8)
        }
            catch{print(error)}
        }
    }
}

#Preview {
    ContentView()
}
