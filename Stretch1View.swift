//
//  Stretch1View.swift
//  PersistenceAndProtocols
//
//  Created by Efe Ozalp on 10/9/23.
//

import SwiftUI

import SwiftUI
import MapKit

//MARK: Stretch #1 - Part I


struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        MKMapView()
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}

struct Stretch1View: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}


