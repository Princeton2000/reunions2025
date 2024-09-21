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
				Text(event.primaryLocation)/*.frame(width: 200, alignment: .leading)*/
//				Accordion {
//					Item("\(event.primaryLocation)") {
//						Embed(title: "\(event.primaryLocation)", url: "https://embed.apple-mapkit.com/v1/place?place=\(event.primaryLocationID ?? "I7C5DCADB09A2461A")&colorScheme=adaptive&token=eyJraWQiOiJYUERHUFc1NjcyIiwidHlwIjoiSldUIiwiYWxnIjoiRVMyNTYifQ.eyJpc3MiOiJCTkRBOVk2WVY5IiwiaWF0IjoxNzIyODgxMzc0LCJvcmlnaW4iOiIqLnByaW5jZXRvbjIwMDAub3JnIiwiZXhwIjoxNzQ5MTgyNDAwfQ.Ui7cZvUiT9oo9BaRjdiZMlz_uZ2OZ_gfsRoyZoBUaMn5oF-f4_1aXvDa7a4gIEDX6kQE0ESlNmyhZvu4xaAadA").aspectRatio(.r4x3)
//					}
//				}
			}
		rows.append(row)
		}
	return rows
}

