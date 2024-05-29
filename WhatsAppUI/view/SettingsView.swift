//
//  SettingsView.swift
//  WhatsAppUI
//
//  Created by Sirac Seyidov on 20.05.2024.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            Section {
                HStack {
                    Image(systemName: "person.crop.circle.fill") // Placeholder for the profile image
                        .resizable()
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        Text("Queen of Ingonyama")
                            .font(.headline)
                        Text("Queen of Ingonyama")
                            .font(.subheadline)
                    }
                }
                .padding(.vertical, 10)
            }
            
            Section {
                NavigationLink(destination: Text("Avatar")) {
                    Label("Avatar", systemImage: "person.crop.circle.badge.plus")
                }
            }
            
            Section {
                NavigationLink(destination: Text("Toplu Mesaj Listeleri")) {
                    Label("Toplu Mesaj Listeleri", systemImage: "list.bullet")
                }
                NavigationLink(destination: Text("Yıldızlı Mesajlar")) {
                    Label("Yıldızlı Mesajlar", systemImage: "star.fill")
                }
                NavigationLink(destination: Text("Bağlı Cihazlar")) {
                    Label("Bağlı Cihazlar", systemImage: "laptopcomputer")
                }
            }
            
            Section {
                NavigationLink(destination: Text("Hesap")) {
                    Label("Hesap", systemImage: "key.fill")
                }
                NavigationLink(destination: Text("Gizlilik")) {
                    Label("Gizlilik", systemImage: "lock.fill")
                }
                NavigationLink(destination: Text("Sohbetler")) {
                    Label("Sohbetler", systemImage: "message.fill")
                }
                NavigationLink(destination: Text("Bildirimler")) {
                    Label("Bildirimler", systemImage: "bell.fill")
                }
                NavigationLink(destination: Text("Saklama Alanı ve Veriler")) {
                    Label("Saklama Alanı ve Veriler", systemImage: "externaldrive.fill")
                }
            }
        }
        .navigationTitle("Ayarlar")
    }
}

#Preview {
    SettingsView()
}
