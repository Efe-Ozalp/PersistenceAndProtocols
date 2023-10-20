//
//  HeaderViewR.swift
//  PersistenceAndProtocols
//
//  Created by Efe Ozalp on 10/9/23.
//

import SwiftUI

struct HeaderViewR: View {
    var body: some View {
        Group {
            Divider()
            Text("Protocols Challenge")
                .frame(maxWidth: .infinity, alignment: .center)
                .font(.title)
            Divider()
        }
    }
}

struct HeaderViewR_Previews: PreviewProvider {
    static var previews: some View {
        HeaderViewR()
    }
}
