//
//  Dues.swift
//
//
//  Created by Justin Purnell on 7/8/24.
//

import Foundation
import Ignite

struct AnnualGiving: StaticPage {
	var title = "Annual Giving"

	func body(context: PublishingContext) -> [BlockElement] {
		Group {
			Group {
				Text("Annual Giving").font(.title1).fontWeight(.semibold)
				Text("25th Reunion Annual Giving Campaign").font(.title2).fontWeight(.regular)
				Text("July 1, 2023 – June 30, 2024").font(.title2).fontWeight(.regular)
			}.horizontalAlignment(.center)
			Quote {
				Text(markdown: "*“Unrestricted gifts from undergraduate and graduate alumni, parents, and friends help provide the ‘margin of excellence’ that makes a Princeton education second to none. Annual Giving sustains and enhances the University’s distinctive academic programs and brings together Princetonians of all generations.”*")
			}
			for content in context.content(ofType: "ag") {
				Text(content.body)
			}
			Group {
				Link(target: "https://alumni.princeton.edu/annual-giving") {
					Button("Make a Gift")
						.buttonSize(.large)
						.addCustomAttribute(name: "style", value: "background-color: #E77500")		
				}
			}.horizontalAlignment(.center)
				.padding()
			
			Embed(youTubeID: "PIGbZA3Re-A", title: "Venture Forward: Making Audacious Bets").aspectRatio(.r4x3).padding(.vertical, 20)
		}.padding(.horizontal, 20)
	}
}
