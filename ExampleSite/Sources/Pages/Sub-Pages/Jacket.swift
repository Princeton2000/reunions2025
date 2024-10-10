//
//  Housing.swift
//
//
//  Created by Justin Purnell on 7/8/24.
//

import Foundation
import Ignite

struct Jacket: StaticPage {
	var title = "Jacket"
	let jacketImages = ["/images/jacket/6FB9D9B5-6DA6-4D6C-B8D8-CEC5D029ADCC.JPG","/images/jacket/Image 10-29-21 at 1.46 PM (2).JPG", "/images/jacket/Image 10-29-21 at 1.47 PM.JPG", "/images/jacket/917479EB-F940-49DC-BECA-80D16ACA546C.JPG", "/images/jacket/E6420ED7-0C9C-4559-AB4F-B504120082CD.JPG",  "/images/jacket/IMG_0983.jpeg", "/images/jacket/IMG_0984.jpeg", "/images/jacket/IMG_0985.jpeg", "/images/jacket/IMG_0986.jpeg", "/images/jacket/IMG_5359.jpeg", "/images/jacket/RenderedImage.jpeg"]
	let otherImages = ["/images/jacket/1ABC26BB-4FB3-4ADA-BC83-44BC96582568.JPG", "/images/jacket/1B04B29E-D04C-4921-A414-C24C9F6CA2AB.JPG", "/images/jacket/01BEBA65-AED0-4BB0-9BEA-6094F6899830.JPG", "/images/jacket/1D16DD4D-6399-4BDF-8D85-1F9151E00DF7.JPG", "/images/jacket/1E29D5D6-2E03-439B-AC23-485FA24F3AEF.JPG", "/images/jacket/3BAD2615-E68A-469B-98F0-77F1E9E0B862.JPG",  "/images/jacket/8BD0F569-D792-4E8C-A83D-470FFCF68351.JPG", "/images/jacket/35B2B644-483D-4F4B-9B77-54FC27E8F227.JPG", "/images/jacket/038878A3-7F21-46F6-BBD7-0F1441466DA7.JPG", "/images/jacket/50339A46-4C5D-4688-9800-7CA88630C85E.JPG", "/images/jacket/66863F89-9457-4186-BD54-98CC79F682CF.JPG",  "/images/jacket/8924028E-15CB-4A58-9E22-9DD29CA52C2D.JPG", "/images/jacket/A02D341B-C3F2-412B-ACCA-75FA7BEECFF2.JPG", "/images/jacket/A168188D-6A35-4ABD-BCFD-BE91B0759D3E.JPG", "/images/jacket/ACA45EF8-C067-4216-A02D-B36BE0F3E1F4.JPG", "/images/jacket/BB6EB6C2-DD3F-4131-B481-DD10B348A253.JPG", "/images/jacket/C7689FF6-77AA-4C1C-B18F-00A05A7B36BC.JPG", "/images/jacket/CAFE9C84-E3ED-4967-887E-6897526F57F7.JPG", "/images/jacket/D826AAC4-C70D-4574-A066-6E47B529E096.JPG",  "/images/jacket/ECFF80C3-46BF-4123-A945-F340D47251C7.JPG", "/images/jacket/F71BF1D6-8566-4E3E-B590-8B835BE2F5E2.JPG", "/images/jacket/FBD375F6-E0B5-4523-943E-DC498D5F4A2B.JPG", "/images/jacket/Image 10-29-21 at 1.46 PM (1).JPG",  "/images/jacket/Image 10-29-21 at 1.46 PM (3).JPG", "/images/jacket/Image 10-29-21 at 1.46 PM.JPG", "/images/jacket/Image 10-29-21 at 1.47 PM (1).JPG", "/images/jacket/Image 10-29-21 at 1.47 PM (2).JPG", "/images/jacket/Image 10-29-21 at 1.47 PM (3).JPG",  "/images/jacket/Image 10-29-21 at 1.48 PM.JPG",    "/images/jacket/IMG_0987.jpeg", "/images/jacket/IMG_0988.jpeg", "/images/jacket/IMG_1119.jpeg", "/images/jacket/IMG_1120 (1).jpeg", "/images/jacket/IMG_1120.jpeg"]
	
	func body(context: PublishingContext) -> [BlockElement] {
//		Text("Jacket's going to be nice. We're going for nice. The below was an idea, but it's not the jacket. Trust the process.")
//		Carousel {
//			for image in jacketImages {
//				Slide(background: image).aspectRatio(.r4x3)
//			}
//		}.carouselStyle(.crossfade)
		Alert {
			Text("They're working on it!")
				.fontWeight(.bold)
				.horizontalAlignment(.center)
			Text {
				Link("While you wait, check out the Bob Rodgers ’56 Reunion and Beer Jacket Collection | Princetoniana Museum", target: "https://www.princetonianamuseum.org/category/98a248a5-8e28-414d-85a0-55a17e275a42")
					.target(.newWindow)
					.relationship(.noOpener, .noReferrer)
			}.fontWeight(.semibold).horizontalAlignment(.center)
		}.role(.info)
	
		Divider()
		Accordion {
			for content in context.content(ofType: "faq").filter({$0.tags.contains("jacket")}).sorted(by: {$0.tags[0] < $1.tags[0]}) {
				Item(content.metadata["question"] as! InlineElement) {
					Text(markdown: content.body)
				}
			}
		}
		var jacketImageBatch = jacketImages.batched(into: 3)
		
			
//		for batch in jacketImageBatch {
//			Section {
//				for image in batch {
//					Image(image, description: "Jacket Inspiration").resizable().width(4).padding(.top, 10)
//				}
//			}
//		}
	}
}

