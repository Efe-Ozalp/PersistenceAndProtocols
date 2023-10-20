//
//  MVPModifier.swift
//  PersistenceAndProtocols
//
//  Created by Efe Ozalp on 10/9/23.
//

import SwiftUI

//MARK: MVP - Part I

struct MVPModifier: ViewModifier {
func body(content: Content) -> some View {
content
.font(.caption2)
.padding(10)
.overlay(
RoundedRectangle(cornerRadius: 15)
.stroke(lineWidth: 1)
)
.foregroundColor(Color.blue)
}
}

