//
//  File.swift
//  IgniteStarter
//
//  Created by Justin Purnell on 8/5/24.
//

import Foundation
import Ignite

public struct Copyright: Component {
	var calendar: Calendar = .current
	var year: Int { return Calendar.current.component(.year, from: Date())}
	
	public func body(context: PublishingContext) -> [any PageElement] {
		Text {
			"© \(year) Princeton Class of 2000. All Rights Reserved."	
		}.font(.title6).foregroundStyle(.tertiary).addCustomAttribute(name: "style", value:  "font: 1rem/4.0;")
	}
	
	public init() {}
	
}
