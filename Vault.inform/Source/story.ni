"The Vault" by Brandon Cooper

Section 1 - Rooms

Main Tunnel Entrance is a room. "A large, dusty interior, dimly lit by narrow sunshafts entering through [the vault door]. Next to the door lies a [control panel]. Next to the [control panel] sits half-full [bottle of vodka] and a [deck of cards]."  Before looking for the first time, say "As you walk through the vault door, you hear a crackling sound from an unseen speaker above: [quotation mark]Get out! You are unwelcome here. Leave me to my experiments.[quotation mark]."

Antechamber is east of Main Tunnel Entrance. "You enter an enormous circular chamber with bright fluorescent lights shining down on you."

Leader's Office is south of Antechamber.

Vault is a region. Main Tunnel Entrance, Antechamber, and Scientist's Office are in Vault.

[The description of Antechamber is "[unfinished]."]

Section 2 - Objects

The vault door is scenery in the Main Tunnel Entrance. It is fixed in place. "A massive, weathered lead door. It may have withstood the war, but it has definitely seen better days."
The control panel is scenery in the Main Tunnel Entrance. "A rusty control panel probably used to open [the vault door]. It doesn't seem to be working now. On top of the panel lies a [key card]." It is fixed in place and undescribed. It is a supporter. On the rusty control panel is a key card. It is undescribed. "This key card has to open something..."
A dusty rag is on the control panel. The description of it is "A dusty rag that one of the guards must have left on the panel."
A bottle of vodka is in the Main Tunnel Entrance. The description of it is "A half-full bottle of vodka. The guards had to do something to pass their time..."
A deck of cards is in the Main Tunnel Entrance. The description of it is "Just a deck of playing cards."

Section 3 - Player

The player has a number called health. health is usually 0.
Health is an action applying to nothing. Understand "health" as health.
Carry out health:
	if the health of the player > 900 begin;
		say "You're in good health.";
	else if the health of the player > 750;
		say "You are beginning to feel nauseous.";
	else if the health of the player > 500;
		say "You feel tired and dizzy. You should probably see a doctor";
	else;
		say "Your limbs shake as you stumble along.";
	end if; 
When play begins:
	move player to Main Tunnel Entrance.
	
Section 4 - Scenes

[Beginning of the game starts with this scene]
Introduction is a scene. Introduction begins when play begins. "After the bombs went off, the world became a wasteland where only the strongest and smartest could hope to survive. But over the years, humanity had begun to slowly come back together into scattered remnants of civilizations. As modern technology became a luxury few had, you volunteered to aid in recovering scientific artifacts from before the war. Your search led you to a recently discovered vault rumored to be a nuclear shelter for scientists..."