#let ruby-size = 0.65em
#let furi(ruby-c, body) = box(height: 1em + ruby-size, baseline: 1em, place(bottom + center, text(size: ruby-size, ruby-c)) + body)
// couldn't bother to fix ruby
// I'll just put everything underset
// #let ruby(ruby-c, body) = box(height: 1em + ruby-size, baseline: 0.65em, place(top + center, text(size: ruby-size, ruby-c)) + body)