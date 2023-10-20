//
//  FooterViewR.swift
//  PersistenceAndProtocols
//
//  Created by Efe Ozalp on 10/9/23.
//

import SwiftUI

struct FooterViewR: View {
    var body: some View {
        Divider()
        Group {
            Image("MobileMakersEduNB")
                .resizable()
                .frame(maxWidth: .infinity)
                .scaledToFit()
        }
        .padding()
    }
}

