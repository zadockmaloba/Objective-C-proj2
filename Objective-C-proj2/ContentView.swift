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

struct CustomTabBar: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        HStack {
            Spacer()
            
            Button(action: {
                self.selectedTab = 0
            }) {
                Image(systemName: "house")
                    .padding()
            }
            .foregroundColor(selectedTab == 0 ? .blue : .gray)
            
            Spacer()
            
            Button(action: {
                self.selectedTab = 1
            }) {
                Image(systemName: "magnifyingglass")
                    .padding()
            }
            .foregroundColor(selectedTab == 1 ? .blue : .gray)
            
            Spacer()
            
            Button(action: {
                self.selectedTab = 2
            }) {
                Image(systemName: "bell")
                    .padding()
            }
            .foregroundColor(selectedTab == 2 ? .blue : .gray)
            
            Spacer()
            
            Button(action: {
                self.selectedTab = 3
            }) {
                Image(systemName: "person")
                    .padding()
            }
            .foregroundColor(selectedTab == 3 ? .blue : .gray)
            
            Spacer()
        }
        .frame(height: 50)
        .background(Color("#414141"))
    }
}

#Preview {
    ContentView()
}
