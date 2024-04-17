//
//  ContentView.swift
//  Objective-C-proj2
//
//  Created by Zadock Maloba on 15/04/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSecondView = false
    @State private var searchText = ""
    @State private var slctTab = 0
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Search...", text: $searchText)
                    .padding()
                    .textFieldStyle(PlainTextFieldStyle())
                Spacer()
                NavigationLink(destination: SecondView(), isActive: $isShowingSecondView) {
                                    Text("Go to Second View")
                                }
                CustomTabBar(selectedTab: $slctTab)
            
            }
            .padding()
            .navigationTitle("Home")
        }.padding(0)
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
