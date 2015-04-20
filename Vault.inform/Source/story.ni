"The Vault" by Brandon Cooper

Section 1 - Rooms

Main Tunnel Entrance is a room. "A large, dusty interior, dimly lit by narrow sunshafts entering through [the vault door]. Next to the door lies a [control panel]. Next to the [control panel] sits a half-full [bottle of vodka] and a [deck of cards]. Above, you see an old [fire sprinkler]."

[The blast door is east of Main Tunnel Entrance and west of Antechamber. The blast door is a door. The blast door is closed and not openable. The description of it is "A solid metal blast door that someone closed shut when you entered. There has to be some way to open it..."]

The blast door is scenery in the Main Tunnel Entrance. The description of it is "A solid metal blast door that someone closed shut when you entered. There has to be some way to open it..."

Antechamber is a room[east of Main Tunnel Entrance]. "You enter an enormous circular chamber with bright fluorescent lights shining down on you."

Scientist's Office is south of Antechamber. The description of it is "A dusty lab filled with ragged books and desks littered with papers. In front of one of the desks stands a [scientist]. To the south there is a doorway to another room."

The Back Room is south of the Scientist's Office.

Vault is a region. Main Tunnel Entrance, Antechamber, Scientist's Office, and the Back Room are in Vault.

[The description of Antechamber is "[unfinished]."]

Section 2 - Objects

[Main Tunnel Entrance objects]
The vault door is scenery in the Main Tunnel Entrance. It is fixed in place. "A massive, weathered lead door. It may have withstood the war, but it has definitely seen better days."
The control panel is scenery in the Main Tunnel Entrance. "A rusty control panel probably used to open [the vault door]. It doesn't seem to be working now." It is fixed in place and undescribed. It is a supporter. [On the rusty control panel is a key card. It is undescribed. "This key card has to open something..."]
A dusty rag is on the control panel. It is undescribed. The description of it is "A dusty rag that one of the guards must have left on the panel. On top of it you spot a [dusty rag]."
A bottle of vodka is in the Main Tunnel Entrance. The description of it is "A half-full bottle of vodka. The guards had to do something to pass their time..."
A deck of cards is in the Main Tunnel Entrance. The description of it is "A worn out deck of playing cards."
A fire sprinkler is in the Main Tunnel Entrance. The description of it is "A fire sprinkler sitting on the low ceiling above."

[Scientist's Office objects]
A paper-ridden desk is in the Scientist's Office. It is fixed in place. The description of it is "A sturdy desk covered in papers, most of which you probably wouldn't understand."

Section 3 - Player

The player is in Main Tunnel Entrance.
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
[When play begins:]
	[wait for any key]
	[move player to Main Tunnel Entrance.]
	
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

Before looking for the first time, say "As you walk through the vault door, you hear a crackling sound from an unseen speaker above: [quotation mark]Get out! You are unwelcome here. Leave me to my experiments.[quotation mark]. As the buzzing stops, the blast door leading further into the vault closes shut."
The fire alarm is a truth state that varies. The fire alarm is false.
Instead of opening the blast door:
	if the fire alarm is true begin;
		move the player to the Antechamber;
	else;
		say "The blast door is closed shut.";
	end if;

[Fire alarm puzzle]
Instead of burning the dusty rag:
	if the player has the dusty rag and player has the vodka begin;
		say "You soak the rag in vodka, light it on fire, then hold the rag up to the [fire sprinkler]. Moments later the fire alarm goes off, and you hear the [blast door] open up and reveal an inner chamber to the east.";
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

The scientist is a person inside the scientist's office. The maximum health of the scientist is 35. The health of the scientist is 35. The description of it is "A nervous, frail looking man who appears not to have seen the light of day in years. He appears unarmed."

Chapter 4 - The Back Room

Before going south:
	If the scientist is alive and the player is in the Scientist's Office begin;
		say "As you pass through the door into the scientist's back room, he silently pulls a knife from his boot and slides it between your shoulder blades. [line break]The scientist whispers into your ear, [quotation mark]These secrets are mine and only mine.[quotation mark][line break]You gasp as you feel the life drain from your body.";
		end the story;
	end if;
	
Instead of telling the scientist hello: say "Hello, ."
Instead of asking the scientist about himself: say "