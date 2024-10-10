//
//  Housing.swift
//
//
//  Created by Justin Purnell on 7/8/24.
//

import Foundation
import Ignite

struct Kids: StaticPage {
	var title = "Kids"

	func body(context: PublishingContext) -> [BlockElement] {
		Group{
			Text(markdown: "We’ve planned a host of activities at our Headquarters site for families with kids, including a bouncy slide, a photo booth with props, retro [movies](../schedule-movies/), and assorted games.")
			Text(markdown: "**Note:** *We are not legally allowed to provide child care onsite.*")
			
			Text(markdown: "Check out the Kids' Schedule [here:](../schedule-kids/)")
			Embed(youTubeID: "-fgCslr7N84", title: "Bouncy Tiger Comes Alive").aspectRatio(.r16x9)
			Text(markdown: "To accompany our P-rade float, we are recruiting a junior tiger squad to [march in the P-rade](/prade/), handing out collectibles to P-Rade goers.")
		}.padding(.horizontal, 5)
		Group {
			Text("Register for Tiger Camp").font(.title1)
			Text(markdown: "Princeton has partnered with **YWCA Princeton** to offer its traditional **“Tiger Camp”** childcare during Reunions from **Friday, May 23** to **Saturday, May 24**. Registration for kids 3 months to 12 years old will open soon.🐯")
			Link("Tiger Camp Information", target: "https://reunions.princeton.edu/tiger-camp/").linkStyle(.button).buttonSize(.large).role(.dark).padding()
			Group {			
				Image("/images/photos/IMG_0464.jpeg.webp", description: "Tiger Cubs play Jenga at Tiger Camp").resizable().padding(.vertical, 20)
			}
		}.horizontalAlignment(.center)
		.padding(.horizontal, 20)
	}
}
