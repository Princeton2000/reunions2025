//
//  NavBar.swift
//  IgniteStarter
//
//  Created by Justin Purnell on 7/8/24.
//

import Foundation
import Ignite

public struct NavBar: Component {
	public init() { }
	
	func logo(_ imageLocation: String = "/images/Logo_2000Reunion_TIGER_Color_60px.png", altText: String = "Princeton 2000 Tiger Logo") -> String  {
		return "<a href=\"/\" class=\"navbar-brand\"><img src=\"\(imageLocation)\" alt=\"\(altText)\" class=\"img-fluid\"></a>"
	}
	func princeton2000() -> String {
		return "<a href=\"/\" class=\"navbar-brand\"><h3 style=\"font-family: princeton_monticello; font-size: calc(1.2rem + .7vw); color: #EE7F2D; line-height: 2rem; margin-bottom: 0rem; text-align: center; class=\"text-center mx-auto\">PRINCETON 2000</h2>"
	}
	func bidEveryCare() -> String {
		"<h6 style=\"font-family: princeton_monticello; font-size: calc(0.55rem + 0.4vw); color: var(--bs-heading-color); line-height: 1rem; padding: 0em; margin-bottom: 0rem; letter-spacing: .10rem; class=\"text-center mx-auto\">BID EVERY CARE WITHDRAW</h6></a>"
	}
	
	func navBarString(logo: String, top: String, kicker: String) -> String {
		return """
   \(logo)
   \(top)
   \(kicker)
"""
	}

	public func body(context: PublishingContext) -> [any PageElement] {
		NavigationBar(logo: navBarString(logo: logo(), top: princeton2000(), kicker: bidEveryCare()) ) {
//			Link(Text("Home").foregroundStyle(.princetonOrange), target: "https://www.princeton2000.org")
			Link(Text("Registration").foregroundStyle(.princetonOrange), target: Registration())
//			Link(Text("News").foregroundStyle(.princetonOrange), target: News())
			Link(Text("Housing").foregroundStyle(.princetonOrange), target:  Housing())
			Link(Text("Schedule").foregroundStyle(.princetonOrange), target: Schedule())
			Link(Text("Kids").foregroundStyle(.princetonOrange), target: Kids())
//			Link(Text("Committee").foregroundStyle(.princetonOrange), target: Committee())
			Link(Text("FAQ").foregroundStyle(.princetonOrange), target: faq())
			Link(Text("Jacket").foregroundStyle(.princetonOrange), target: Jacket())
//			Link(Text("Table Video").foregroundStyle(.princetonOrange), target: TableVideo())
//			Dropdown("Class News") {
//				Link(Text("Notes").foregroundStyle(.princetonOrange), target: Notes())
//				Link(Text("Library").foregroundStyle(.princetonOrange), target: Library())
//			}.foregroundStyle(.princetonOrange)
			Link(Text("Notes").foregroundStyle(.princetonOrange), target: Notes())
			Link(Text("Library").foregroundStyle(.princetonOrange), target: Library())
			Link(Text("Dues").foregroundStyle(.princetonOrange), target: Dues())
//			Link(Text("P-rade").foregroundStyle(.princetonOrange), target: Prade())
		}
		.navigationItemAlignment(.trailing)
		.navigationBarStyle(.light)
	}
}
