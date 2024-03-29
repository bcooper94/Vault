"The Vault" by Brandon Cooper

Section 1 - Rooms

Main Tunnel Entrance is a room. "You walk into a large, dusty interior, dimly lit by narrow sunshafts entering through [the vault door]. Next to the door lies a [control panel], on top of which is a [dusty rag]. Next to the [control panel] sits rather [drunk guard], with a half-full [bottle of vodka] and a [deck of cards] beside him. Above, you see an [fire sprinkler]. To your east is a closed [blast door]."

Antechamber is a room. "You enter an enormous circular chamber with bright fluorescent lights shining down on you. Against one wall you spot a [small bookshelf].[if first aid kit is in the Antechamber] On top of the [small bookshelf] you see what looks like a [first aid kit].[end if] To the south you see a doorway."

Scientist's Office is south of Antechamber. The description of it is "A dusty room filled with ragged books and desks littered with papers. In front of one of the desks stands a [scientist]. To the south there is a doorway to another room."

The Back Room is south of the Scientist's Office. The description of it is "A well-lit lab with a single working [computer]. Next to the [computer] is a single [file] labeled top secret."

Vault is a region. Main Tunnel Entrance, Antechamber, Scientist's Office, and the Back Room are in Vault.

Section 3 - Player

Instead of examining the player: say "You feel unprepared for what you might find in this place. You're also craving water and a cigarette. Too bad you only brought a lighter and your knife.";

The player is in Main Tunnel Entrance. The player carries a lighter and a combat knife.
Health is an action applying to nothing. Understand "health" as health.
Carry out health:
	if the health of the player > 80 begin;
		say "You're in good health.";
	else if the health of the player > 60;
		say "You are beginning to feel weary.";
	else if the health of the player > 40;
		say "You feel tired and dizzy. You should probably see a doctor";
	else;
		say "Your limbs shake as you stumble along. Find a doctor soon!";
	end if; 
	say "( Your health is [health of the player] out of [maximum health of the player] )";

Using is an action applying to a thing. Understand "use [something]" as using.
Instead of using a first aid kit:
	if the player has the first aid kit begin;
		if the health of the player is less than 60 begin;
			increase the health of the player by 40;
		else;
			increase the health of the player by maximum health of the player - health of the player;
		end if;
		say "You use the first aid kit, healing you to [health of the player] health.";
		now the first aid kit is nowhere;
	else;
		say "You don't have a first aid kit.";
	end if;

Section 4 - Scenes

[Beginning of the game starts with this scene]
Introduction is a scene. Introduction begins when play begins. "After the bombs went off, the world became a wasteland where only the strongest and smartest could hope to survive. But over the years, humanity had begun to slowly come back together into scattered remnants of civilizations. As modern technology became a luxury few had, you volunteered to aid in recovering scientific artifacts from before the war. Your search led you to a recently discovered vault rumored to be a nuclear shelter for scientists..."

PartTwo is a scene. PartTwo begins when the player is in the Antechamber. "As you step through the [blast door], the fire alarm shuts off and  an armed [security guard] rushes toward you, lashing out with his night stick. You see his strike just in time to step back and avoid the blow."

Flashback is a scene. Flashback begins when the player has the dusty book. "[line break]Skimming over the first few pages of this history text, you are reminded of life before the war. You picture actual green grass, trees, and flowers. A life not plagued by radiation; a life where every day is not a battle against the elements. You suddenly snap back to reality as you hear a thump coming from the room to the south."

Section 5 - Rules

A person has a number called maximum health. A person has a number called health.
The maximum health of the player is 100. The health of the player is 100.

Instead of attacking the player: say "You wouldn't want to do that, would you?"
Instead of attacking someone: 
	let the damage be a random number between 5 and 10;
	say "You attack [the noun], causing [damage] points of damage!"; 
	decrease the health of the noun by the damage; 
	if the health of the noun is less than 0: 
		say "[line break][The noun] is killed."; 
		if the noun is not the player:
			now the noun is nowhere;
		if the noun is the player:
			end the story;
		stop the action;
	let the enemy damage be a random number between 2 and 10; 
	say "[line break][The noun] attacks you, causing [enemy damage] points of damage!"; 
	decrease the health of the player by the enemy damage; 
	if the health of the player is less than 0: 
		say "[line break]You are killed!";
		end the story;
		
Definition: a person is alive if its health is greater than 0.
Definition: a person is hostile if its health is less than its maximum health.

Chapter 1 - Entering the Vault

[Main Tunnel Entrance objects]
The vault door is scenery in the Main Tunnel Entrance. It is fixed in place. "A massive, weathered lead door. It may have withstood the war, but it has definitely seen better days."
The control panel is scenery in the Main Tunnel Entrance. "A rusty control panel probably used to open [the vault door]. It doesn't seem to be working now." It is fixed in place and undescribed. It is a supporter. [On the rusty control panel is a key card. It is undescribed. "This key card has to open something..."]
A dusty rag is on the control panel. It is undescribed. The description of it is "A dusty rag that one of the guards must have left on the panel.[line break]( Options: take, burn.)"
A bottle of vodka is a thing in the Main Tunnel Entrance. The description of it is "A half-full bottle of vodka. The guard had to do something to pass his time...[line break]( Options: take, drink, burn.)"
A deck of cards is in the Main Tunnel Entrance. The description of it is "A worn out deck of playing cards.[line break]( Options: take.)"
An old fire sprinkler is in the Main Tunnel Entrance. The description of it is "A fire sprinkler sitting on the low ceiling above. As your eyes trace down the walls from the fire sprinkler, you notice a red warning plaque on the wall: [quotation mark]In the event of a fire, all personnel are to exit the facility immediately. All blast doors will open automatically to ensure the safety of all employees.[quotation mark]".
The blast door is scenery in the Main Tunnel Entrance. The description of it is "A solid metal blast door that  closed shut as you entered. There has to be some way to open it up again..."

[Drunk guard and his responses]
A drunk guard is a person in the Main Tunnel Entrance. The description of it is "A rather inebriated person. It seems that they won't be trying to stop you from waltzing through their vault any time soon.[line break](You can ask him about himself, the vodka, or the vault.)"

Instead of asking the drunk guard about "himself": say "[quotation mark]I'm just here to keep that dumb ol scientist out of trouble. The job doesn't exactly pay, but it has its perks,[quotation mark] the guard says as he motions toward the [bottle of vodka].";
Instead of asking the drunk guard about "the vodka/vodka": say "[quotation mark]I swear it drank itself...[quotation mark] the guard mumbles.";
Instead of asking the drunk guard about "the vault/here": say "The guard says, [quotation mark]This is my home. I keep the scientist alive and we all have a place to live.[quotation mark]";

Instead of attacking the drunk guard: say "Now why would you attack a harmless drunk?";

After looking for the first time, say "As you walk through the vault door, you hear a crackling sound from an unseen speaker above: [quotation mark]Get out! You are unwelcome here. Leave me to my experiments.[quotation mark]. As the buzzing stops, the blast door leading further into the vault closes shut.[line break][line break](Hint: type [quotation mark]health[quotation mark] to view your health status.)"
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
		say "You soak the rag in vodka, light it on fire, then hold the rag up to the [fire sprinkler]. Moments later the fire alarm goes off, and you hear the [blast door] open up and reveal an inner chamber to the east.";
		change the east exit of the Main Tunnel Entrance to the Antechamber;
		let the fire alarm be true;
	else if the player has the dusty rag;
		say "You try to burn the rag, but only the dust burns. Maybe it would light if you had some fuel...";
	else;
		say "You have nothing to burn.";
	end if;
Instead of drinking the vodka:
	if the player has the vodka begin;
		say "You take a quick swig of the drink.";
	else;
		say "You have nothing suitable to drink.";
	end if;
	
Instead of burning the vodka:
	if the player does not have the bottle of vodka begin;
		say "You have nothing to burn.";
	else;
		if the player does not have the dusty rag begin;
			say "That would probably end in you lighting yourself on fire. Maybe there is a safer alternative...";
		else;
			say "Maybe the rag would be a safe alternative...";
		end if;
	end if;
	
Chapter 2 - The Antechamber

The security guard is a person inside the Antechamber. It is undescribed. The maximum health of the security guard is 40. The health of the security guard is 40. The description of it is "An angry guard intent on killing you. Fortunately, he is only only armed with a night stick."
A small bookshelf is in the Antechamber. It is fixed in place. The description of it is "A worn out bookshelf resting against the far wall of the chamber. Most of the books are illegible from age and lack of care, but one [dusty book] stands out to you."
A dusty book is in the Antechamber. It is undescribed. The description of it is "An old history book detailing events before the war.[line break]( Options: take.)"
A first aid kit is on the small bookshelf. The description of it is "A healing item.[line break]( Options: take, use.)"

Instead of examining the dusty book:
	let the enemy damage be a random number between 5 and 15;
	if the security guard is alive begin;
		say "You should probably worry about the [security guard] attacking you first.";
		say "[line break]While your back is turned, the [security guard] attacks you from behind, causing [enemy damage] points of damage!"; 
		decrease the health of the player by the enemy damage; 
		if the health of the player is less than 0 begin;
			say "[line break]You are killed!";
			end the story;
		end if;
	else;
		try taking the dusty book;
	end if;
Instead of taking the dusty book for at most the tenth time:
	let the enemy damage be a random number between 5 and 15;
	if the security guard is alive begin;
		say "You should probably worry about the [security guard] attacking you first.";
		say "[line break]While your back is turned, the [security guard] attacks you from behind, causing [enemy damage] points of damage!"; 
		decrease the health of the player by the enemy damage; 
		if the health of the player is less than 0 begin;
			say "[line break]You are killed!";
			end the story;
		end if;
	else if the player does not have the dusty book;
		try taking the dusty book;
	end if;

Instead of going south for at most the tenth time:
	if the security guard is alive and the player is in the Antechamber begin;
		say "The [security guard] blocks your path.";
	else;
		try going south;
	end if;

Chapter 3 - The Office

[Scientist's Office objects]
A paper-ridden desk is in the Scientist's Office. It is fixed in place. The description of it is "A sturdy desk covered in papers, most of which you probably wouldn't understand. Behind the desk stands a [scientist], coldly staring you down."

[Scientist]
The scientist is a man inside the scientist's office. The maximum health of the scientist is 35. The health of the scientist is 35. The description of it is "A nervous, looking man who appears not to have seen the light of day in years. You notice that his hands are shaking, but he appears unarmed..."

[Scientist conversations]
Instead of examining the scientist for the first time: say "A nervous looking man who appears not to have seen the light of day in years. His hands appear to be shaking, but he appears unarmed...[line break][line break]The scientist says, [quotation mark]What? Are you just going to stand there gawking at me?[quotation mark][line break](You can ask him about himself, the office, or the vault.)";
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
Instead of taking the file:
	say "You glance over the contents of the file, finding detailed schematics for many pre-war medical devices. You decide that this is exactly what you were looking for and quickly make your way toward the entrance, so as to avoid running into any other psychotic scientists.";
	end the story;