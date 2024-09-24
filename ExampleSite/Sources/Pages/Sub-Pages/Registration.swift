//
//  Housing.swift
//
//
//  Created by Justin Purnell on 7/8/24.
//

import Foundation
import Ignite

struct Registration: StaticPage {
	var title = "Registration"

	func body(context: PublishingContext) -> [BlockElement] {
		for content in context.content(ofType: "registration").filter({!$0.tags.contains("walk-up")}) {
			Text(content.body)
		}
		Divider()
		musicEmbed(teaserText: "While you think about registration…may we interest you in some Reunions Jams?")
//		Accordion {
//			Item("While you register…may we interest you in some Reunions Jams?") {
//				Section {
//					Text {
//						Button("Apple Music") {
//							ShowElement("Apple Music")
//							HideElement("Spotify")
//						}
//						.buttonSize(.medium)
//						.opacity(1.0)
//					}
//					.horizontalAlignment(.center)
//					.background(.appleMusicRed)
//					.width(1)
//					Text {
//						Button("Spotify") {
//							HideElement("Apple Music")
//							ShowElement("Spotify")
//						}
//						.buttonSize(.medium)
//						.opacity(1.0)
//					}
//					.horizontalAlignment(.center)
//					.background(.spotifyGreen)
//					.width(1)
//				}
//				.horizontalAlignment(.leading)
//
//				Section{
//					Include("appleMusicEmbed.html")
//				}
//				
//				.id("Apple Music")
//				
//				Section{
//					Include("spotifyEmbed.html")
//				}
//				.id("Spotify")
//				.hidden()
//			}
//		}
	}
}
