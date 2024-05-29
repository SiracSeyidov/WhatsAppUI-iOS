//
//  ContentView.swift
//  WhatsAppUI
//
//  Created by Sirac Seyidov on 20.05.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 3
    @ObservedObject var viewModel = DataViewModel()
    
    var body: some View {
        VStack{
            if let data = viewModel.userData{
                TabView(selection: $selection){
                    UpdatesView(recentUpdates: data.updates, viewedUpdates: data.updates)
                        .tabItem {
                            Image(systemName: "circle.dotted")
                            Text("Updates")
                        }
                        .tag(1)
                    
                    CallsView(calls: data.calls)
                        .tabItem {
                            Image(systemName: "phone")
                            Text("Calls")
                        }
                        .tag(2)
                    
                    ChatsView(chats: data.chats)
                        .tabItem {
                            Image(systemName: "message")
                            Text("Chats")
                        }
                        .tag(3)
                    
                    SettingsView(data: data.profile)
                        .tabItem {
                            Image(systemName: "gear")
                            Text("Settings")
                        }
                        .tag(4)
                }
            }else{
                Text("Loading...")
            }
        }
        .onAppear{
            viewModel.fetch()
        }
    }
}

#Preview {
    ContentView()
}
