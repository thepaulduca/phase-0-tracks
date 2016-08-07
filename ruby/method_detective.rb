# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”


"zom".sub("o","oo")
"zom".gsub("o","oo")
"zom".insert(1,"o")
"zom".replace("zoom")
# => “zoom”


"enhance".center("enhance".length + 8)
"enhance".prepend("    ").concat("    ")
# Replace works for pretty much every instance so I stopped putting it in
"zom".replace("    enhance    ")
# => "    enhance    "


"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"


"the usual".concat(" suspects")
"the usual".insert(9," suspects")
#=> "the usual suspects"



" suspects".insert(0, "the usual")
" suspects".prepend("the usual")
# => "the usual suspects"


"The case of the disappearing last letter".chomp('r')
"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"


"The mystery of the missing first letter".slice(1,38)
"The mystery of the missing first letter".reverse.chop.reverse
# => "he mystery of the missing first letter"


"Elementary,    my   dear        Watson!".split.join(" ")
"Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"


"z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)


"How many times does the letter 'a' appear in this string?".count('a')
# => 4