square_distance=0
z_star=2*room_height
start_text[1]=0
start_text[2]=room_height*2.2
start_text[3]=z_star*2

direction_text[1]=0
direction_text[2]=-0.8/10
direction_text[3]=10/10

timer=0;

text[0] = "POKIMONISARNA leker STAR WARS. "
text[1] = "Ett nytt hopp har spridit sig genom galaxen."
text[2] = "REBELLERNA har vunnit sin första strid mot "
text[3] = "EMPERIALISTERNA. Under striden lyckades "
text[4] = "REBELLERNA stjäla hemliga planer om EMPERIETS   "
text[5] = "ultimata vapen DÖDSARMADAN, som är så kraftig att "
text[6] =   "den kan förstöra en hel planet ..."
text[7] = ".... fast på låtsas. Men ack och ve BULBASARS "
text[8] = "MAMMA säger: Ne nu ä lä mat!!! De övriga"
text[9] = "POKIMONISARNA kommer på att de snart också"
text[10] = " måste äta."
text[11] = ""
text[12] = "POKIMONISARNA måste snabbt avsluta leken."
text[13] = "Motvilligt måste REBELLERNA acceptera att"
text[14] = "även om de vunnit en strid så har "
text[15] = "EMPERIALISTERNA varit bättre. Precis innan "
text[16] = "REBELLERNA accepterar sitt nederlag säger  "
text[17] = "PIKACHU: ´´Jag kan ta mig egenom erat "
text[18] = "minfält och besegra eran armada med MOLTRES,"
text[19] = " VAPOREON och FEAROW alldeles ensam.´´"
text[20] = "Omedvetna om att deras minfält blivit "
text[21] = "infiltrat av DITTOSARNAS INFILTRATÖRSSKVADRON"
text[22] = "utrustade med potions, xdefend, pp_up och psncure"
text[23] = ", går EMPIRIALISTERNA med på att PIKACHUS lag "
text[24] = "vinner om PIKACHU klarar av att göra det han sa. "
text[25] = "SNORLAX tar fram popcornen."
text[26] = "Spänningen är olidlig..."
text[27] = ""

gui_w = display_get_gui_width();
gui_h = display_get_gui_width();

text_speed = 3.2; //0.2
scale=3.5
spacing = 64*scale; //16

stars = 100;
for (var i = stars-1; i > -1; i--)
{
   px[i] = irandom(gui_w);
    py[i] = irandom(gui_h);
}

