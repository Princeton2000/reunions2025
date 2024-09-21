//
//  Housing.swift
//
//
//  Created by Justin Purnell on 7/8/24.
//

import Foundation
import Ignite

struct Committee: StaticPage {
	var title = "Committee"

	func body(context: PublishingContext) -> [BlockElement] {
		Table {
			Row {
				Column {
					Image.tiger.resizable().frame(width: 100, height: 100)
					Text("Krista Dobi").fontWeight(.semibold)
					Text("Co-Chair")
				}.horizontalAlignment(.center)
				Column {
					Image.tiger.resizable().frame(width: 100, height: 100)
					Text("Emily Hicks").fontWeight(.semibold)
					Text("Co-Chair")
				}.horizontalAlignment(.center)
				Column {
					Image.tiger.resizable().frame(width: 100, height: 100)
					Text("Chris Phelen").fontWeight(.semibold)
					Text("Co-Chair")
				}.horizontalAlignment(.center)
			}
			Row {
				Column {
					Image.tiger.resizable().frame(width: 100, height: 100)
					Text("Spencer Merriweather").fontWeight(.semibold)
					Text("Alumni-Faculty Forums")
				}.horizontalAlignment(.center)
				Column {
					Image.tiger.resizable().frame(width: 100, height: 100)
					Text("Jena Sher").fontWeight(.semibold)
					Text("Artwork")
				}.horizontalAlignment(.center)
				Column {
					Image.tiger.resizable().frame(width: 100, height: 100)
					Text("Kate Tamalonis").fontWeight(.semibold)
					Text("Beverages")
				}.horizontalAlignment(.center)
			}
			Row {
				Column {
					Image.tiger.resizable().frame(width: 100, height: 100)
					Text("Pete Giannascoli & Monica Rubio").fontWeight(.semibold)
					Text("Children's Programming")
				}.horizontalAlignment(.center)
				Column {
					Image.tiger.resizable().frame(width: 100, height: 100)
					Text("Ana Samuel").fontWeight(.semibold)
					Text("Community Service")
				}.horizontalAlignment(.center)
				Column {
					Image.tiger.resizable().frame(width: 100, height: 100)
					Text("Katie Oman, Kate Elliot & Alice Teti").fontWeight(.semibold)
					Text("Costumes")
				}.horizontalAlignment(.center)
			}
			Row {
				Column {
					Image.tiger.resizable().frame(width: 100, height: 100)
					Text("Emily Tepe & Mike Viola").fontWeight(.semibold)
					Text("Entertainment")
				}.horizontalAlignment(.center)
				Column {
					Image.tiger.resizable().frame(width: 100, height: 100)
					Text("Jeff Knapp & Claire Ikeda-Thew").fontWeight(.semibold)
					Text("Finance")
				}.horizontalAlignment(.center)
				Column {
					Image.tiger.resizable().frame(width: 100, height: 100)
					Text("Ian & Andrea Hageman").fontWeight(.semibold)
					Text("Food")
				}.horizontalAlignment(.center)
			}
			Row {
				Column {
					Image.tiger.resizable().frame(width: 100, height: 100)
					Text("Chris Freeland & Jack Wilmer").fontWeight(.semibold)
					Text("Headquarters")
				}.horizontalAlignment(.center)
				Column {
					Image.tiger.resizable().frame(width: 100, height: 100)
					Text("Courtney Chlebus").fontWeight(.semibold)
					Text("Housing")
				}.horizontalAlignment(.center)
				Column {
					Image.tiger.resizable().frame(width: 100, height: 100)
					Text("TBA & TBA").fontWeight(.semibold)
					Text("Memorial Service")
				}.horizontalAlignment(.center)
			}
			Row {
				Column {
					Image.tiger.resizable().frame(width: 100, height: 100)
					Text("Mary Pagnotto & Teresa Miller").fontWeight(.semibold)
					Text("P-Rade")
				}.horizontalAlignment(.center)
				Column {
					Image.tiger.resizable().frame(width: 100, height: 100)
					Text("Cameron Snaith").fontWeight(.semibold)
					Text("Programming")
				}.horizontalAlignment(.center)
				Column {
					Image.tiger.resizable().frame(width: 100, height: 100)
					Text("TBA").fontWeight(.semibold)
					Text("Publicity")
				}.horizontalAlignment(.center)
			}
			Row {
				Column {
					Image.tiger.resizable().frame(width: 100, height: 100)
					Text("Gia Fruscione").fontWeight(.semibold)
					Text("Registration")
				}.horizontalAlignment(.center)
				Column {
					Image.tiger.resizable().frame(width: 100, height: 100)
					Text("Clint Kakstys").fontWeight(.semibold)
					Text("Satellites")
				}.horizontalAlignment(.center)
				Column {
					Image.tiger.resizable().frame(width: 100, height: 100)
					Text("Chris Phelen & Melissa Demontrond").fontWeight(.semibold)
					Text("Student Crew")
				}.horizontalAlignment(.center)
			}
			Row {
				Column {
					Image.tiger.resizable().frame(width: 100, height: 100)
					Text("TBA").fontWeight(.semibold)
					Text("Sustainability")
				}.horizontalAlignment(.center)
				Column {
					Image.tiger.resizable().frame(width: 100, height: 100)
					Text("TBA").fontWeight(.semibold)
					Text("Technology")
				}.horizontalAlignment(.center)
				Column {
					Image.tiger.resizable().frame(width: 100, height: 100)
					Text("Tim Howe & Mike Nixon").fontWeight(.semibold)
					Text("Theme")
				}.horizontalAlignment(.center)
			}
			Row {
				Column {
					Image.tiger.resizable().frame(width: 100, height: 100)
					Text("Ashley Martabano").fontWeight(.semibold)
					Text("Transportation")
				}.horizontalAlignment(.center)
				Column {
					Image.tiger.resizable().frame(width: 100, height: 100)
					Text("Tiffany Madigan").fontWeight(.semibold)
					Text("Yearbooks/Historian")
				}.horizontalAlignment(.center)
				Column {
					Image.tiger.resizable().frame(width: 100, height: 100)
					Text(" ").fontWeight(.semibold)
					Text("At-Large")
				}.horizontalAlignment(.center)
			}
		}
	}
}
