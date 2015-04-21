"The Vault" by Brandon Cooper

Section 1 - Rooms

Main Tunnel Entrance is a room. "A large, dusty interior, dimly lit by narrow sunshafts entering through [the vault door]. Next to the door lies a [control panel]. Next to the [control panel] sits a half-full [bottle of vodka] and a [deck of cards]. Above, you see an old [fire sprinkler]. To your east is a [blast door]."

Antechamber is a room[east of Main Tunnel Entrance]. "You enter an enormous circular chamber with bright fluorescent lights shining down on you. To the south you see a doorway."

Scientist's Office is south of Antechamber. The description of it is "A dusty room filled with ragged books and desks littered with papers. In front of one of the desks stands a [scientist]. To the south there is a doorway to another room."

The Back Room is south of the Scientist's Office. The description of it is "A well-lit lab with a single working [computer]. Next to the [computer] is a single [file] labeled top secret."

Vault is a region. Main Tunnel Entrance, Antechamber, Scientist's Office, and the Back Room are in Vault.

[The description of Antechamber is "[unfinished]."]

Section 3 - Player

Instead of examining the player: say "You feel unprepared for what you might find in this place. You're also craving water and a cigarette. Too bad you only brought a lighter and your knife.";

The player is in Main Tunnel Entrance. The player carries a lighter and a combat knife.
Health is an action applying to nothing. Understand "health" as health.
Carry out health:
	if the health of the player > 90 begin;
		say "You're in good health.";
	else if the health of the player > 75;
		say "You are beginning to feel nauseous.";
	else if the health of the player > 50;
		say "You feel tired and dizzy. You should probably see a doctor";
	else;
		say "Your limbs shake as you stumble along.";
	end if; 
	say "( Your health is [health of the player] out of [maximum health of the player] )";
	
Section 4 - Scenes

[Beginning of the game starts with this scene]
Introduction is a scene. Introduction begins when play begins. "After the bombs went off, the world became a wasteland where only the strongest and smartest could hope to survive. But over the years, humanity had begun to slowly come back together into scattered remnants of civilizations. As modern technology became a luxury few had, you volunteered to aid in recovering scientific artifacts from before the war. Your search led you to a recently discovered vault rumored to be a nuclear shelter for scientists..."

PartTwo is a scene. PartTwo begins when the player is in the Antechamber. "As you step through the [blast door], the fire alarm shuts off and the door begins to close."

Section 5 - Rules

A person has a number called maximum health. A person has a number called health.
The maximum health of the player is 100. The health of the player is 100.

Instead of attacking someone: 
	let the damage be a random number between 5 and 10; 
	say "You attack [the noun], causing [damage] points of damage!"; 
	decrease the health of the noun by the damage; 
	if the health of the noun is less than 0: 
		say "[line break][The noun] is killed."; 
		now the noun is nowhere; 
		stop the action;
	let the enemy damage be a random number between 2 and 10; 
	say "[line break][The noun] attacks you, causing [enemy damage] points of damage!"; 
	decrease the health of the player by the enemy damage; 
	if the health of the player is less than 0: 
		say "[line break]You are killed!"; 
		
Definition: a person is alive if its health is greater than 0.
Definition: a person is hostile if its health is less than its maximum health.

Chapter 1 - Entering the Vault

[Main Tunnel Entrance objects]
The vault door is scenery in the Main Tunnel Entrance. It is fixed in place. "A massive, weathered lead door. It may have withstood the war, but it has definitely seen better days."
The control panel is scenery in the Main Tunnel Entrance. "A rusty control panel probably used to open [the vault door]. It doesn't seem to be working now." It is fixed in place and undescribed. It is a supporter. [On the rusty control panel is a key card. It is undescribed. "This key card has to open something..."]
A dusty rag is on the control panel. It is undescribed. The description of it is "A dusty rag that one of the guards must have left on the panel. On top of it you spot a [dusty rag]."
A bottle of vodka is in the Main Tunnel Entrance. The description of it is "A half-full bottle of vodka. The guards had to do something to pass their time..."
A deck of cards is in the Main Tunnel Entrance. The description of it is "A worn out deck of playing cards."
A fire sprinkler is in the Main Tunnel Entrance. The description of it is "A fire sprinkler sitting on the low ceiling above."
The blast door is scenery in the Main Tunnel Entrance. The description of it is "A solid metal blast door that someone closed shut when you entered. There has to be some way to open it..."


Before looking for the first time, say "As you walk through the vault door, you hear a crackling sound from an unseen speaker above: [quotation mark]Get out! You are unwelcome here. Leave me to my experiments.[quotation mark]. As the buzzing stops, the blast door leading further into the vault closes shut."
The fire alarm is a truth state that varies. The fire alarm is false.
Instead of opening the blast door:
	if the fire alarm is true begin;
		move the player to the Antechamber;
	else;
		say "The blast door is closed shut.";
	end if;

[Fire alarm puzzle]
Understand the command "torch" as "burn".
Instead of burning the dusty rag:
	if the player has the dusty rag and player has the vodka begin;
		say "You soak the rag in vodka, light it on fire, then hold the rag up to the [fire sprinkler]. Moments later the fire alarm goes off, and to your east you hear the [blast door] open up and reveal an inner chamber to the east.";
		change the east exit of the Main Tunnel Entrance to the Antechamber;
		[change the west exit of the Antechamber to the Main Tunnel Entrance;]
		let the fire alarm be true;
	else if the player has the dusty rag;
		say "You try to burn the rag, but only the dust burns.";
	else;
		say "You have nothing to burn.";
	end if;
Instead of drinking the vodka:
	if the player has the vodka begin;
		say "You take a quick swig of the drink.";
	else;
		say "You have nothing suitable to drink.";
	end if;
	
Chapter 2 - The Antechamber



Chapter 3 - The Office

[Scientist's Office objects]
A paper-ridden desk is in the Scientist's Office. It is fixed in place. The description of it is "A sturdy desk covered in papers, most of which you probably wouldn't understand."

[Scientist]
The scientist is a man inside the scientist's office. The maximum health of the scientist is 35. The health of the scientist is 35. The description of it is "A nervous, frail looking man who appears not to have seen the light of day in years. He appears unarmed..."

[Scientist conversations]
Instead of examining the scientist for the first time: say "A nervous, frail looking man who appears not to have seen the light of day in years. He appears unarmed...[line break][line break]The scientist says, [quotation mark]What? Are you just going to stand there gawking at me?[quotation mark][line break](You can ask him about himself, the vault, or the office.)";
Instead of asking the scientist about "himself": say "Looking obviously annoyed, the scientist says, [quotation mark]I am a scientist, of course.[quotation mark]";
Instead of asking the scientist about "himself" for at least the second time: say "The scientist stares you down. [quotation mark]Maybe you should leave.[quotation mark]";
Instead of asking the scientist about "vault/the vault": say "The scientist replies, [quotation mark]This place was supposed to be a secret, and you shouldn't be here. Please leave. Now.[quotation mark]";
Instead of asking the scientist about "here/the office/office": say "The scientist replies, [quotation mark]This is my office. For obvious reasons, I don't conduct my research in this room.[quotation mark]";
Instead of asking the scientist about "here/the office/office" for at least the second time: say "The scientist agrily replies, [quotation mark]I you already asked me that.[quotation mark]";

Chapter 4 - The Back Room

Before going south:
	If the scientist is alive and the player is in the Scientist's Office begin;
		say "As you pass through the door into the scientist's back room, he silently pulls a knife from his boot and slides it between your shoulder blades. [line break]The scientist whispers into your ear, [quotation mark]Like I said, this place is top secret. But you won't be taking any of my secrets with you.[quotation mark][line break]You gasp as you feel the life drain from your body.";
		end the story;
	end if;
	
The file is in the Back Room. The description of it is "A thick file marked top secret."
The computer is in the Back Room. It is fixed in place. The description of it is "An old computer used for the scientist's experiments. You haven't seen one of these in a long time."