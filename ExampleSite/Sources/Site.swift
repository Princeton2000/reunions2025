import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
		let site = Princeton2000()
        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct Princeton2000: Site {
    var name = "Reunions 2025"
    var titleSuffix = " – Princeton 2000"
	var description = "Official Informational Site for Princeton's Class of 2000 25th Reunions, May 22-25, 2025"
	var language: Locale.Language = .init(identifier: "en-US")
	var url = URL(string: "https://reunions.princeton2000.org")!
    var builtInIconsEnabled = true
	var robotsConfiguration = Robots()
	var feedConfiguration = RSS()
    var author = "Princeton 2000"

    var homePage = Home()
	var tagPage = Tags()
    var theme = MyTheme()
	
	var pages: [any StaticPage] {
		News()
		Library()
		Notes()
		Registration()
		Housing()
		Schedule()
		Kids()
		ScheduleKids()
		ScheduleMovies()
		Committee()
		faq()
		Jacket()
		Gear()
		Prade()
//		TableVideo()
		Colophon()
		Dues()
	}
	
	var layouts: [any ContentPage] {
		Story()
		Email()
	}
}





