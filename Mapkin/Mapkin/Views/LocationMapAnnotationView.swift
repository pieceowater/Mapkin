//
//  LocationMapAnnotationView.swift
//  Mapkin
//
//  Created by yury mid on 15.08.2022.
//



import SwiftUI

struct LocationMapAnnotationView: View {
    
    let accentColor = Color.accentColor
    
    var body: some View {
        VStack(spacing: 0){
            Image(systemName: "map.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .foregroundColor(accentColor)
                .shadow(color: Color.black.opacity(0.2), radius: 1, x: 0, y: 2)
            Image(systemName: "triangle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 10, height: 10)
                .rotationEffect(Angle(degrees: 180))
                .foregroundColor(accentColor)
                .offset(y: -3)
                .padding(.bottom, 35)
                .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 2)
        }
    }
}

struct LocationMapAnnotationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationMapAnnotationView()
    }
}
