//
//  ContentView.swift
//  BucketList
//
//  Created by Yasseen Rouni on 8/19/24.
//

import SwiftUI


struct User: Comparable, Identifiable {
    let id = UUID()
    let firstName: String
    let lastName: String
    
    static func <(lhs: User, rhs: User) -> Bool {
        lhs.lastName < rhs.lastName
    }
}

struct ContentView: View {
    let users = [
        User(firstName: "Arnold", lastName: "Rimmer"),
        User(firstName: "Kristine", lastName: "Kochanski"),
        User(firstName: "David", lastName: "Lister")
    ].sorted()
    
    var body: some View {
        List(users) { user in
            Text("\(user.lastName), \(user.firstName)")
        }
    }
}

#Preview {
    ContentView()
}
