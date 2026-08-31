#import "import.typ": *

#show: set_style

#muchpdf(read("front.pdf", encoding: none))

#include "cover_page.typ"

#outline()
#pagebreak()

#include "intro.typ"
#pagebreak()

#include "operads.typ"

#pagebreak()

#include "Koszul.typ"

#pagebreak()

#include "Deformations.typ"

#pagebreak()

#bibliography("refs.yaml")
