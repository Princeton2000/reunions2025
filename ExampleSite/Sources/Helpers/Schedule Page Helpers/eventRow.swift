//
//  File.swift
//  IgniteStarter
//
//  Created by Justin Purnell on 8/12/24.
//

import Foundation
import Ignite

func eventRow(_ events: [Event], day value: Int) -> [Row] {
	var rows: [Row] = []
	for event in events.filter({$0.startComponents.weekday == value}) {
		let row =
			Row {
//				Image(systemName: eventTypeIcon(event.type).0).foregroundStyle(.princetonOrange)
				Text("\(eventTypeIcon(event.type).1)").horizontalAlignment(.center)
				Text(event.eventStartEnd)/*.frame(width: 160, alignment: .leading)*/
				Text(event.name)/*.fontWeight(.medium).frame(width: 200, alignment: .leading)*/
				Text(event.location)/*.frame(width: 200, alignment: .leading)*/
			}
		rows.append(row)
		}
	return rows
}

