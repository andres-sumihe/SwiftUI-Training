//
//  ContentView.swift
//  ProjectSpaceWatch Watch App
//
//  Created by P090MMCTSE010 on 20/10/23.
//

import SwiftUI

import WatchConnectivity

struct ContentView: View {
    
    var watchSession: WCSession?
    
//    func viewDidLoad() {
//        if !WCSession.isSupported() {
//            watchSession = nil
//            return
//        }
//        
//        watchSession = WCSession.default
//        watchSession?.delegate = self
//        watchSession?.activate()
//    }
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
