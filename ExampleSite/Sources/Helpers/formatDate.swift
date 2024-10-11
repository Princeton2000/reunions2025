//
//  formatDate.swift
//  IgniteStarter
//
//  Created by Justin Purnell on 8/14/24.
//

import Foundation
import Ignite

func formatDate(_ string: String, _ dateStyle: DateFormatter.Style = .medium, _ timeStyle: DateFormatter.Style = .medium) -> String {
	let df = DateFormatter()
	df.dateStyle = dateStyle
	df.timeStyle = timeStyle
	return df.string(from: getDate(string))
}
