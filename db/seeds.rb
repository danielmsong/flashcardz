#encoding: UTF-8
names = <<-NAMES
J-Walka
Chek Minuz
Purpostriss
Ho’pin Sesamee
Un Konshinabull
2rette’s
Da Undermina
Gar Ganchuwin
Downey Juneya
Papa Cut
Imperviuz
F*ck Newton
Big Ready
Nytelyte
Indian Givva
Butta Nyfe
Wash Bor’d
Passiv Aggrezziv
Chikin Poxxx
Ninja-vitis
Da Constant Gardna
Wurth Wyle
Skandaliss
Gift Rappa
LinchPin
Safety Sizzlas
Retrakt
Throwt Lozinge
No Sho
Young Karl
Clutch Hurta
Halatosiz
Lil’ Big Horn
Sue Chef
Idzamarch
Loosid Dream
Sir Ammik
Hichair
2 Bitz
AbraKadabra
Docta T An Da Women
Earra Table
Spell Checka
Kandykain
InstaGatez
Wata Fo Choclit
Greazy Gary
Rip’d Blankitt
Woopin’ Coff
Craig Ferguzzin
Bedbuggz
AEIOYou
Fallin Rox
Lil’ Swimmin
Son Spot
Pryzetag
Kritikull Mas
Bubblegun
Wild Wild Bess
CordaRoyce
Rellativitee
Rambunxis
Mantakor
Progrezzo Pasta Supe
Will Smythe
H2Oh!2
Supaduper
Byefokalz
Blinkin Cursa
Stifficult
F*ck The Parentz
Wyte Out
Pokadot
Vowel Ball
Benedick Hardnold
Smelly
Square Mealz
Puddin Pops
Interruptur
Rollacoasta
MC C-SPAN
Damnpartz Redglare
Sellabasee
Ryza Roni
Finanshully Stabull
DA FILABUSTA
Troubleclick
Bars & Pipes Foreva
Slush Puppee
Yo Monmouth
X-ema
State Comptrolla
Priuz
Hash Bridges
Cyllie Puddy
CrackSkype
Wyne Coola
That’s a Rapper
Shallow Gravy
Number 2 Stunna
Fistcocity
Country Homey
Capitol Dee
Well Digga
Bawlin’
Thyn Minnt
Starf*cka
Dubeuss Distinkssion
SinnerMon
Strick9
Emaila
Steddy Income
Punkchuwashun
A Tribe Called Mapquest
Draggin’ Slaya
Praktikal
Swetta Vest
MinnyMe
Lokal Area Networxxx
Drug Maker
Mouze
Cappa’ Chino
Kechup Pakkit
Dre M.D.
Farfetch’d
Tayta Sack
Da Squeala
Oriyo
Nekkrofeeliak
Word Saya
High Sobriety
Sexxtant
Willie Maize
Da Obstratrishin
Imbezla
Young Hindenberg
Tuff Stufff
Byfoculz
Peanut Bragga
EyeB4Eee
Indijestshun
Mic Myers
Black 2 Tha Futcha
Lo Fatt
Da Runna Up
Sowwer Grapez
Karryinkase
F*ck Rogers
Uncle F*ck
Nozebleed
High-Ku
Krankee
Slaptop
William The Rapper
Kavatease
Not Nice
Majenta
Da Funn Unkle
Mylkshaqe
SevenEightNine
Kooky Cutta
Barap Obama
High Rhyme Rate
Yezwecan
Embargo
Con Stockton
Mind Shaf’t
LepreCONman
Staple Remova
Burger Bling
Unoriginul
Yellow Journalizzy
Da Moon
Malpractizzz
Butta Pekan
Fazebook
Oregan’hos
Warren Rapp
High Fiba
Perfekt Tenz
AvaRAGE
Propain
Large Hadron Collida
A.D.Dee
Spud Gunz
Alfabet Supe
Carpetbagga
Trippa Bypass
Blue Tang Fan
Disskuraging
XL Spreadsh*t
Pill Papa
Narcoleptik
Lactoze Intolerint
XtaseeBiscuit
Cattapolt
Mr. Doubtfiya
Lukrativ
Peddakur
Govvamint Deregulata
Spoonerizm
Lazy Horse
Tykkled Pink
Joint Vencha
Whores D’oeuvres
PMSkimo
Froot Fly
Dead Vice Prez
2can Sam
Da Diabeaters
Police Informant
Mikenike
Sizzlin Faheetah
Econosyze
Tap Watta
Xpedia Dot Con
Kouponz
Oscar Da Slouch
Tupac 2
Un-P.C. Richard
Glass Is Half M.C.
Grudge Judy
McCain & Abel
MarioKart-el
Attempted R-Son
Charles Barkley
Xtra Valu Meel
Badd Kredit
G-yo Cities
Captain Ahrap
Vizcozitee
Spy-C Meatball
Male Frawd
Noid Avoida
Hommonim
TyBo
Moneyhava
Warp’d Whistle
Sulk Bogan
Sound Investa
Luc Warm
Honeynuts Cheeryo
NAMES

require 'faker'

User.create(username: 'dbc', email: 'dbc@dbc.com', password: 'pw')
User.create(username: 'mark', email: 'mark@marky.com', password: 'pw')

10.times do |i|
  Deck.create(:name => "Rap legends#{i}", user_id: [1, 2].sample)
end

500.times do
  Card.create(:front => Faker::Lorem.sentence(2), 
    :back=>names.each_line.to_a.map(&:chomp).sample, 
    :deck_id => (1..10).to_a.sample) 
end

__END__

"The Chronic, 2001, Detox": "Dr. Dre"
"I Am...The Autobiography, God's Son, Hip Hop Is Dead": "Nas"
"Elephunk, Monkey Business, The E.N.D.": "Black Eyed Peas"
"All Hail the Queen, Black Reign, Trav'lin' Light": "Queen Latifah"
"Radio, Bigger and Deffer, G.O.A.T.": "LL Cool J"
"Rock the House, He's the DJ, I'm the Rapper, Homebase": "DJ Jazzy Jeff & The Fresh Prince"
"Ready To Die, Life After Death, Born Again": "The Notorious B.I.G."
"Word Of Mouf, Chicken-n-Beer, Release Therapy": "Ludacris"
"Yo! Bum Rush the Show, It Takes a Nation of Millions to Hold Us Back, Fear of a Black Planet": "Public Enemy"
"Jealous Ones Still Envy (J.O.S.E.), Loyalty, Me, Myself & I": "Fat Joe"
"Blunted on Reality, The Score, Bootleg Versions": "The Fugees"
"Ill Na Na, Chyna Doll, Broken Silence": "Foxy Brown"
"Doggystyle, Tha Doggfather, R&G (Rhythm & Gangsta): The Masterpiece": "Snoop Dogg"
"Rhyme Pays, O.G. Original Gangster, Home Invasion": "Ice-T"
"Country Grammar, Nellyville, Suit": "Nelly"
"Albums": "Rapper"
"E 1999 Eternal, The Art of War, Strength & Loyalty": "Bone Thugs-N-Harmony"
"Hot, Cool & Vicious, Blacks' Magic, Very Necessary": "Salt-N-Pepa"
"Get Rich Or Die Tryin', The Massacre, Curtis": "50 Cent"
"Hard Core, La Bella Mafia, The Naked Truth": "Lil' Kim"
One Day It'll All Make Sense, Be, Finding Forever Common
"Straight Outta Compton, 100 Miles and Runnin', Niggaz4life": "N.W.A."
"Vol. 2... Hard Knock Life, The Black Album, Kingdom Come": "Jay-Z"
"Aquemini, Stankonia, Speakerboxxx / The Love Below": "Outkast"
Strictly 4 My N.I.G.G.A.Z, Me Against The World, All Eyez On Me 2Pac
It's Dark and Hell Is Hot, Grand Champ, Year of the Dog...Again DMX
"King Of Rock, Raising Hell, Tougher Than Leather": "Run D.M.C."
Paid in Full, Follow the Leader, Let the Rhythm Hit 'Em Eric B. & Rakim
Supa Dupa Fly, Miss E… So Addictive, Under Construction Missy Elliott
"The Coming, When Disaster Strikes, Genesis": "Busta Rhymes"
"Ruff Ryders' First Lady, Scorpion, Eve-Olution": "Eve"
