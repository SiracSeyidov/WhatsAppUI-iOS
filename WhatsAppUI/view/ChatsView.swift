//
//  ChatsView.swift
//  WhatsAppUI
//
//  Created by Sirac Seyidov on 20.05.2024.
//

import SwiftUI

struct Chat: Identifiable {
    var id = UUID()
    var name: String
    var message: String
    var time: String
    var imageName: String
}

struct ChatsView: View {
    let chats = [
        Chat(name: "Big Boy", message: "Tamam balam", time: "Dün", imageName: "person"),
        Chat(name: "Sultanım", message: "Booo arada çay iç de yaxşı olacaq", time: "Dün", imageName: "person"),
        Chat(name: "Awqımımğğ", message: "Davam", time: "Dün", imageName: "person"),
        Chat(name: "Kadın Budu", message: "Yaxşı", time: "Dün", imageName: "person"),
        Chat(name: "Civimm", message: "", time: "Dün", imageName: "person"),
        Chat(name: "Kikirikk", message: "Şu mesaja 💋 ifadesini bırakınız: \"Çıkartma\"", time: "Cumartesi", imageName: "person"),
        Chat(name: "SidZiyy", message: "", time: "Cumartesi", imageName: "person")
    ]
    
    var body: some View {
        NavigationView {
            List(chats) { chat in
                HStack {
                    Image(systemName: chat.imageName)
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    VStack(alignment: .leading) {
                        Text(chat.name)
                            .font(.headline)
                        Text(chat.message)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    VStack {
                        Text(chat.time)
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                }
                .padding(.vertical, 8)
            }
            .navigationBarTitle("Sohbetler", displayMode: .inline)
            .navigationBarItems(trailing: HStack {
                Button(action: {
                    // Action for camera button
                }) {
                    Image(systemName: "camera")
                        .imageScale(.large)
                }
                Button(action: {
                    // Action for new chat button
                }) {
                    Image(systemName: "plus")
                        .imageScale(.large)
                }
            })
        }
    }
}

#Preview {
    ChatsView()
}
