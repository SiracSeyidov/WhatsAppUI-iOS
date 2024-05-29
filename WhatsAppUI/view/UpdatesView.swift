//
//  UpdatesView.swift
//  WhatsAppUI
//
//  Created by Sirac Seyidov on 20.05.2024.
//

import SwiftUI

struct StatusUpdate: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let time: String
}

struct UpdatesView: View {
    private let recentUpdates: [StatusUpdate] = [
        StatusUpdate(name: "5+ Tort", imageName: "photo", time: "10 sa. önce")
    ]
    
    private let viewedUpdates: [StatusUpdate] = [
        StatusUpdate(name: "Ana❤️", imageName: "photo", time: "5 sa. önce"),
        StatusUpdate(name: "Milana", imageName: "photo", time: "6 sa. önce"),
        StatusUpdate(name: "Türkan Bacı", imageName: "photo", time: "6 sa. önce"),
        StatusUpdate(name: "Sevinc Xala", imageName: "photo", time: "6 sa. önce")
    ]
    
    var body: some View {
        List {
            Section(header: Text("Durum")) {
                HStack {
                    Image(systemName: "person.crop.circle.fill") // Placeholder for profile image
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    VStack(alignment: .leading) {
                        Text("Durumum")
                            .font(.headline)
                        Text("Durumuma ekle")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    Image(systemName: "camera.fill")
                        .padding(.trailing, 10)
                    Image(systemName: "pencil")
                }
                .padding(.vertical, 5)
            }
            
            Section(header: Text("SON GÜNCELLEMELER")) {
                ForEach(recentUpdates) { update in
                    HStack {
                        Image(systemName: update.imageName)
                            .resizable()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                        VStack(alignment: .leading) {
                            Text(update.name)
                            Text(update.time)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.vertical, 5)
                }
            }
            
            Section(header: Text("GÖRÜLEN GÜNCELLEMELER")) {
                ForEach(viewedUpdates) { update in
                    HStack {
                        Image(systemName: update.imageName)
                            .resizable()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                        VStack(alignment: .leading) {
                            Text(update.name)
                            Text(update.time)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.vertical, 5)
                }
            }
        }
        .navigationTitle("Güncellemeler")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                HStack {
                    Image(systemName: "ellipsis")
                        .padding(.trailing, 10)
                }
            }
        }
    }
}

#Preview {
    UpdatesView()
}
