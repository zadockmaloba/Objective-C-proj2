//
//  ContentView.swift
//  Objective-C-proj2
//
//  Created by Zadock Maloba on 15/04/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSecondView = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
                
                Button("Press"){
                    NSLog(String(validatingUTF8: test_api_hello())!)
                    
                    var temp = TestObject()
                    temp.doSomething()
                }
                NavigationLink(destination: SecondView(), isActive: $isShowingSecondView) {
                                    Text("Go to Second View")
                                }
            
            }
            .padding()
            .navigationTitle("First View")
        }
    }
}

struct SecondView: View {
    var body: some View {
        VStack {
            Text("Second View")
        }
        .navigationTitle("Second View")
    }
}

#Preview {
    ContentView()
}
