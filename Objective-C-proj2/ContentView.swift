//
//  ContentView.swift
//  Objective-C-proj2
//
//  Created by Zadock Maloba on 15/04/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            Button(String(validatingUTF8: test_api_hello())!){
                NSLog(String(validatingUTF8: test_api_hello())!)
                
                var temp = TestObject()
                temp.doSomething()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
