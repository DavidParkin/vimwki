# always include this:
Gollum::Page.send :remove_const, :FORMAT_NAMES if defined? Gollum::Page::FORMAT_NAMES

# first remove all markups:
#Gollum::Markup.formats.clear

# and then define the sole markup to be supported:
Gollum::Markup.formats[:wiki] = {
  :name => "Vimwiki",
  :regexp => /wiki/,
  :reverse_links => false
}
