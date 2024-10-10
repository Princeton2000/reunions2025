import Foundation
import Ignite

struct MyTheme: Theme {
    func render(page: Page, context: PublishingContext) -> HTML {
        HTML {
			Head(for: page, in: context) {
				MetaTag(name: "fediverse:creator", content: "@princeton2000@mastodon.social")
				MetaLink(href: "/css/css_add-ins.css", rel: "stylesheet")
				Script(code: """
(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
					   new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
		j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
		'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
		})(window,document,'script','dataLayer','GTM-TT98XLGL');
""")
			}

            Body {
				Include("/analytics/gtmBody.html")
				NavBar()
                page.body

				Divider()
				Group { SocialLinks() }.padding(.horizontal)
				Group { Include("instagramEmbed.html") }.padding(.horizontal)
				Spacer()
				Copyright()
            }
        }
    }
}
