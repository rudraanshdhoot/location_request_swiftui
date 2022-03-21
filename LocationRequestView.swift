//
//  LocationRequestView.swift
//  patreons
//
//  Created by Rudraansh Dhoot on 20/03/2022.
//

import SwiftUI

struct LocationRequestView: View {
    @ObservedObject var locationManager = LocationManager.shared
    var body: some View {
        ZStack {
            Color(.systemCyan)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Image(systemName: "paperplane.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 210)
                    .frame(maxWidth: 250)
                    .foregroundColor(.white)
                    .padding(.bottom, 42)
                
                Text("Enable Geolocation")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
                    .padding()
                
                Text("By allowing geolocation you are able to explore AR experiences from your friends")
                    .font(.title2)
                    .foregroundColor(.white)
                    .bold()
                    .padding()
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                Button {
                    LocationManager.shared.requestLocation()
                } label: {
                    Text("Share Location")
                        .font(.title2)
                        .bold()
                        .foregroundColor(Color(.systemCyan))
                        .background(RoundedRectangle(cornerRadius: 20, style: .continuous)
                                        .foregroundColor(.white)
                                        .frame(width: 200, height: 60))
                }.padding(.bottom, 30)
                
                Button {
                    
                } label: {
                    Text("Later,")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.white)
                }.padding(.bottom, 30)

            }
        }
    }
}

struct LocationRequestView_Previews: PreviewProvider {
    static var previews: some View {
        LocationRequestView()
    }
}
