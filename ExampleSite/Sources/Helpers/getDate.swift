//
//  getDate.swift
//  IgniteStarter
//
//  Created by Justin Purnell on 10/11/24.
//


import Foundation
import Ignite

func getDate(_ string: String) -> Date {
	let iso8601Formatter = ISO8601DateFormatter()
	let date = iso8601Formatter.date(from: string)
	return date ?? Date()
}