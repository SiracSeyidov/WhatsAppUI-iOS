//
//  CallsView.swift
//  WhatsAppUI
//
//  Created by Sirac Seyidov on 20.05.2024.
//

import SwiftUI

struct Call: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let type: String
    let date: String
    let infoImageName: String
}

struct CallsView: View {
    @State private var selectedSegment = 0
    
    private let segments = ["Tümü", "Cevapsız"]
    private let calls: [Call] = [
        Call(name: "Sultanım❤️", imageName: "person.fill", type: "Cevapsız", date: "Dün", infoImageName: "info.circle"),
        Call(name: "Sultanım❤️ (3)", imageName: "person.fill", type: "Cevapsız", date: "Cumartesi", infoImageName: "info.circle"),
        Call(name: "Big Boy🦁❤️", imageName: "person.fill", type: "Giden", date: "Cumartesi", infoImageName: "info.circle"),
        Call(name: "Big Boy🦁❤️", imageName: "person.fill", type: "Giden", date: "Cuma", infoImageName: "info.circle"),
        Call(name: "Big Boy🦁❤️ (2)", imageName: "person.fill", type: "Giden", date: "Çarşamba", infoImageName: "info.circle"),
        Call(name: "Ana❤️", imageName: "person.fill", type: "Giden", date: "13.05.24", infoImageName: "info.circle"),
        Call(name: "Tükəz", imageName: "person.fill", type: "Gelen", date: "12.05.24", infoImageName: "info.circle")
    ]
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    // Edit action
                }) {
                    Text("Düzenle")
                }
                Spacer()
                Picker("", selection: $selectedSegment) {
                    ForEach(0..<segments.count) { index in
                        Text(segments[index]).tag(index)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                Spacer()
                Button(action: {
                    // Create call link action
                }) {
                    Image(systemName: "phone.badge.plus")
                }
            }
            .padding()
            
            List(calls) { call in
                HStack {
                    Image(systemName: call.imageName)
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    VStack(alignment: .leading) {
                        Text(call.name)
                        Text(call.type)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text(call.date)
                        Image(systemName: call.infoImageName)
                            .foregroundColor(.blue)
                    }
                }
                .padding(.vertical, 5)
            }
        }
        .navigationTitle("Aramalar")
    }
}

#Preview {
    CallsView()
}
