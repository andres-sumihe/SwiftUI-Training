//
//  Welcome.swift
//  PersonalSpace
//
//  Created by P090MMCTSE010 on 20/10/23.
//

import Foundation
import SwiftUI
import SwiftData

struct WelcomeView: View {
    @State private var batteryLevel: Float = 0.0
    @State private var systemName: String = ""
    
    let dateFormatter: DateFormatter = {
            let formatter = DateFormatter()
            formatter.dateFormat = "h:mm"
            return formatter
        }()
    
    var body: some View {
        
        
        
        let currentTime = Date()
        let formattedTime = dateFormatter.string(from: currentTime)

        GeometryReader {
            geometry in
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .edgesIgnoringSafeArea(.all)
                    .overlay(
                        Image("goatjo")
                            .resizable()
                            .scaledToFill()
                            .frame(
                                width: geometry.size.width,
                                height: geometry.size.height
                            )
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                    )
                VStack (content: {
                    Grid {
                        HStack {
                            Text("Fri 20").foregroundColor(.white)
                            Image(systemName: "cloud.fill").foregroundColor(.white)
                            Text("32°").foregroundColor(.white)
                        }
                        Text(formattedTime)
                            .font(.custom("Helvetica Neue", size: 80))
                            .foregroundColor(.white)
                        GridRow {
                            VStack(alignment: .leading) {
                                HStack {
                                    Image(systemName: "iphone.gen3").foregroundColor(.white)
                                    Text("\(String(format: "%.f%%", batteryLevel * -100.0))").foregroundColor(.white)
                                }
                                Text(systemName).foregroundColor(.white)
                                ProgressView(value: (batteryLevel) * -1)
                                    .accentColor(.white)
                            }.frame(width: (geometry.size.width/2)-40)
                            VStack(alignment: .leading) {
                                HStack {
                                    Image(systemName: "cloud.bolt.rain.fill").foregroundColor(.white)
                                    Text("28°").foregroundColor(.white)
                                    
                                }
                                Text("Thunderstorm").foregroundColor(.white)
                                Text("H:33° L:23°").foregroundColor(.gray)
    
                            }.frame(width: (geometry.size.width/2)-40)
                        }
                    }
                    Spacer()
                    Grid {
                        GridRow {
                            Text("Hello").foregroundColor(.white)
                            Image(systemName: "globe").foregroundColor(.white)
                        }
                        GridRow {
                            Image(systemName: "hand.wave").foregroundColor(.white)
                            Text("World").foregroundColor(.white)
                        }
                    }
                }).onAppear {
                    let device = UIDevice.current
                    device.isBatteryMonitoringEnabled = true
                    batteryLevel = device.batteryLevel
                    systemName = device.name
                }.frame(width: geometry.size.width)
            }
        }
        
        
    }
}

#Preview {
    WelcomeView()
}
