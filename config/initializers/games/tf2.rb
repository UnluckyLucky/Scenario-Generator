GAMES[:tf2] = {
    buy_link: 'http://store.steampowered.com/app/440',
    site: 'steam',
    title: 'Team Fortress 2',
    generator_title: 'Loadout',
    background: 'tf2.jpg',
    columns: {
        class: {
            sub_trees: [
                :scout_shotgun, :scout_pistol, :bat, :scout_hat,
                :rocket_launcher, :soldier_shotgun, :soldier_melee_weapon, :soldier_hat,
                :flamethrower, :pyro_shotgun, :pyro_melee_weapon, :pyro_hat,
                :demoman_primary_weapon, :demoman_secondary_weapon, :demoman_melee_weapon, :demoman_hat,
                :minigun, :heavy_secondary_weapon, :fists, :heavy_hat,
                :engineer_shotgun, :engineer_secondary_weapon, :wrench, :engineer_hat,
                :medigun, :syringe_gun, :saw, :medic_hat,
                :rifle, :sniper_secondary_weapon, :sniper_melee_weapon, :sniper_hat,
                :knife, :spy_pistol, :watch, :sniper_hat, :sapper, :spy_hat
            ],
            chance_of_multiple: 0,
            min: 1,
            max: 1,
            options: [
                {
                    scout: {
                        title: 'Scout Shotgun',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Scattergun',
                            :'Force-A-Nature',
                            :'Shortstop',
                            :'Soda Popper',
                            :'Baby Face\'s Blaster',
                            :'Back Scatter'
                        ]
                    },
                    scout_pistol: {
                        title: 'Scout Pistol',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Pistol',
                            :'Bonk! Atomic Punch',
                            :'Crit-a-Cola',
                            :'Mad Milk',
                            :'Winger',
                            :'Pretty Boy\'s Pocket Pistol',
                            :'Flying Guillotine'
                        ]
                    },
                    bat: {
                        title: 'Bat',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Bat',
                            :'Sandman',
                            :'Holy Mackerel',
                            :'Boston Basher',
                            :'Candy Cane',
                            :'Sun-on-a-Stick',
                            :'Fan O\'War',
                            :'Atomizer',
                            :'Wrap Assassin'
                        ]
                    },
                    scout_hat: {
                        help: "This is optional, unless you don't want it to be, in which case it isn't",
                        title: 'Scout Hat',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Batter\'s helmet',
                            :'Bonk helm',
                            :'Ye olde baker boy',
                            :'Troublemaker\'s tossle cap',
                            :'Whoopee cap',
                            :'Baseball Bill\'s Sports Shine',
                            :'The Milkman',
                            :'Bombing Run',
                            :'Flipped Trilby',
                            :'The Superfan',
                            :'Hero\'s Tail Bonk Boy',
                            :'Cheater\'s lament',
                            :'Ghastly gibus',
                            :'Bill\'s Hat',
                            :'Max\'s severed head',
                            :'Wiki Cap',
                            :'Alien Swarm Parasite',
                            :'Modest pile of hat',
                            :'Noble amassment of hats',
                            :'Towering pillar of hats',
                            :'Mann Co Cap Ellis\' Cap',
                            :'Saxton Hale Mask',
                            :'Horrific Headsplitter',
                            :'Spine-Chilling Skull',
                            :'Voodoo Juju Treasure Hat',
                            :'Bounty Hat',
                            :'Hat of Undeniable Wealth And Respect',
                            :'The Athletic Supporter',
                            :'World Traveler\'s Hat',
                            :'Frontline Field Recorder'
                        ]
                    }
                },
                {
                    soldier: {
                        title: 'Rocket Launcher',
                        help: 'Rawket Lawnchair',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Rocket Launcher',
                            :'Direct Hit',
                            :'Black Box',
                            :'Rocket Jumper',
                            :'Liberty Launcher',
                            :'Cow Mangler 5000',
                            :'Original',
                            :'Beggar\'s Bazooka',
                            :'Air Strike'
                        ]
                    },
                    soldier_shotgun: {
                        title: 'Soldier Shotgun',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Shotgun',
                            :'Buff Banner',
                            :'Gunboats',
                            :'Battalion\'s Backup',
                            :'Concheror',
                            :'Mantreads',
                            :'Reserve Shooter',
                            :'Righteous Bison',
                            :'B.A.S.E. Jumper',
                            :'Panic Attack'
                        ]
                    },
                    soldier_melee_weapon: {
                        title: 'Soldier Melee Weapon',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Shovel',
                            :'Equalizer',
                            :'Pain Train',
                            :'Half-Zatoichi',
                            :'Disciplinary Action',
                            :'Market Gardener',
                            :'Escape Plan'
                        ]
                    },
                    soldier_hat: {
                        help: "This is optional, unless you don't want it to be, in which case it isn't",
                        title: 'Soldier hat',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Soldier\'s stash',
                            :'Tyrant\'s helm',
                            :'Stainless pot',
                            :'Killer\'s Kabuto',
                            :'Sergeant\'s drill hat',
                            :'Lumbricus Lid',
                            :'Grenadier\'s Softcap',
                            :'Chieftain\'s Challenge',
                            :'Stout Shako',
                            :'Dr\'s Dapper Topper',
                            :'Exquisite Rack',
                            :'Defiant Spartan',
                            :'Hero\'s Hachimaki',
                            :'Team Captain',
                            :'Furious Fukaamigasa',
                            :'Spiral Sallet',
                            :'Cheater\'s lament',
                            :'Ghastly gibus',
                            :'Bill\'s Hat',
                            :'Max\'s severed head',
                            :'Wiki Cap',
                            :'Alien Swarm Parasite',
                            :'Modest pile of hat',
                            :'Noble amassment of hats',
                            :'Towering pillar of hats',
                            :'Mann Co Cap Ellis\' Cap',
                            :'Saxton Hale Mask',
                            :'Horrific Headsplitter',
                            :'Spine-Chilling Skull',
                            :'Voodoo Juju Treasure Hat',
                            :'Bounty Hat',
                            :'Hat of Undeniable Wealth And Respect',
                            :'The Athletic Supporter',
                            :'World Traveler\'s Hat',
                            :'Frontline Field Recorder'
                        ]
                    }
                },
                {
                    pyro: {
                        title: 'Flamethrower',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Flame Thrower',
                            :'Backburner',
                            :'Degreaser',
                            :'Phlogistinator',
                            :'Rainblower'
                        ]
                    },
                    pyro_shotgun: {
                        title: 'Pyro Shotgun',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Shotgun',
                            :'Flare Gun',
                            :'Reserve Shooter',
                            :'Detonator',
                            :'Manmelter',
                            :'Scorch Shot',
                            :'Panic Attack'
                        ]
                    },
                    pyro_melee_weapon: {
                        title: 'Pyro Melee Weapon',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Fire Axe',
                            :'Axtinguisher',
                            :'Homewrecker',
                            :'Powerjack',
                            :'Back Scratcher',
                            :'Sharpened Volcano Fragment',
                            :'Third Degree',
                            :'Lollichop',
                            :'Neon Annihilator'
                        ]
                    },
                    pyro_hat: {
                        help: "This is optional, unless you don't want it to be, in which case it isn't",
                        title: 'Pyro hat',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Pyro\'s beanie',
                            :'Brigade helm',
                            :'Respectless rubber glove',
                            :'Triboniophorus tyrannus',
                            :'Vintage merryweather',
                            :'The Attendant',
                            :'Napper´s Respite',
                            :'Old Guadalajara',
                            :'Handyman\'s Handle',
                            :'Foster\'s Facade',
                            :'Madame Dixie',
                            :'Pyromancer\'s Mask',
                            :'Hottie\'s Hoodie',
                            :'Connoisseur\'s Cap',
                            :'Cheater\'s lament',
                            :'Ghastly gibus',
                            :'Bill\'s Hat',
                            :'Max\'s severed head',
                            :'Wiki Cap',
                            :'Alien Swarm Parasite',
                            :'Modest pile of hat',
                            :'Noble amassment of hats',
                            :'Towering pillar of hats',
                            :'Mann Co Cap Ellis\' Cap',
                            :'Saxton Hale Mask',
                            :'Horrific Headsplitter',
                            :'Spine-Chilling Skull',
                            :'Voodoo Juju Treasure Hat',
                            :'Bounty Hat',
                            :'Hat of Undeniable Wealth And Respect',
                            :'The Athletic Supporter',
                            :'World Traveler\'s Hat',
                            :'Frontline Field Recorder'
                        ]
                    }
                },
                {
                    demoman: {
                        title: 'Demoman Primary Weapon',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Grenade Launcher',
                            :'Loch-n-Load',
                            :'Ali Baba\'s Wee Booties',
                            :'Loose Cannon',
                            :'B.A.S.E. Jumper',
                            :'Iron Bomber'
                        ]
                    },
                    demoman_seconday_weapon: {
                        title: 'Demoman Secondary Weapon',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Stickybomb Launcher',
                            :'Chargin\' Targe',
                            :'Scottish Resistance',
                            :'Sticky Jumper',
                            :'Splendid Screen',
                            :'Tide Turner',
                            :'Quickiebomb Launcher'
                        ]
                    },
                    demoman_melee_weapon: {
                        title: 'Demoman Melee Weapon',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Bottle',
                            :'Eyelander',
                            :'Pain Train',
                            :'Scotsman\'s Skullcutter',
                            :'Ullapool Caber',
                            :'Claidheamh Mòr',
                            :'Half-Zatoichi',
                            :'Persian Persuader'
                        ]
                    },
                    demoman_hat: {
                        help: "This is optional, unless you don't want it to be, in which case it isn't",
                        title: 'Demoman hat',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Demoman\'s Fro',
                            :'Glengarry Bonnet',
                            :'Scotsman\'s Stove Pipe',
                            :'Hustler\'s Hallmark',
                            :'Tippler\'s Tricorne',
                            :'Sober Stuntman',
                            :'Carouser\'s Capotain',
                            :'Rimmed Raincatcher',
                            :'Prince Tavish\'s Crown',
                            :'Scotch Bonnet',
                            :'Samur-Eye',
                            :'Cheater\'s lament',
                            :'Ghastly gibus',
                            :'Bill\'s Hat',
                            :'Max\'s severed head',
                            :'Wiki Cap',
                            :'Alien Swarm Parasite',
                            :'Modest pile of hat',
                            :'Noble amassment of hats',
                            :'Towering pillar of hats',
                            :'Mann Co Cap Ellis\' Cap',
                            :'Saxton Hale Mask',
                            :'Horrific Headsplitter',
                            :'Spine-Chilling Skull',
                            :'Voodoo Juju Treasure Hat',
                            :'Bounty Hat',
                            :'Hat of Undeniable Wealth And Respect',
                            :'The Athletic Supporter',
                            :'World Traveler\'s Hat',
                            :'Frontline Field Recorder'
                        ]
                    }
                },
                {
                    heavy: {
                        title: 'Minigun',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Minigun',
                            :'Natascha',
                            :'Brass Beast',
                            :'Tomislav',
                            :'Huo-Long Heater'
                        ]
                    },
                    heavy_secondary_weapon: {
                        title: 'Heavy Secondary Weapon',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Shotgun',
                            :'Sandvich',
                            :'Dalokohs Bar',
                            :'Buffalo Steak Sandvich',
                            :'Family Business',
                            :'Panic Attack'
                        ]
                    },
                    fists: {
                        title: 'Fists',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Fists',
                            :'Killing Gloves of Boxing',
                            :'Gloves of Running Urgently',
                            :'Warrior\'s Spirit',
                            :'Fists of Steel',
                            :'Eviction Notice',
                            :'Holiday Punch'
                        ]
                    },
                    heavy_hat: {
                        help: "This is optional, unless you don't want it to be, in which case it isn't",
                        title: 'Heavy Hat',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Football Helmet',
                            :'Officer\'s Ushanka',
                            :'Tough Guy\'s Toque',
                            :'Hound Dog',
                            :'Heavy duty Rag',
                            :'Hard Counter',
                            :'Pugilist\'s Protector',
                            :'Cadaver\'s Cranium',
                            :'Dealer\'s Visor',
                            :'Big Chief',
                            :'Team Captain',
                            :'Magnificent Mongolian',
                            :'Coupe D\'Isaster',
                            :'Dread Knot',
                            :'Large Luchadore',
                            :'Cheater\'s lament',
                            :'Ghastly gibus',
                            :'Bill\'s Hat',
                            :'Max\'s severed head',
                            :'Wiki Cap',
                            :'Alien Swarm Parasite',
                            :'Modest pile of hat',
                            :'Noble amassment of hats',
                            :'Towering pillar of hats',
                            :'Mann Co Cap Ellis\' Cap',
                            :'Saxton Hale Mask',
                            :'Horrific Headsplitter',
                            :'Spine-Chilling Skull',
                            :'Voodoo Juju Treasure Hat',
                            :'Bounty Hat',
                            :'Hat of Undeniable Wealth And Respect',
                            :'The Athletic Supporter',
                            :'World Traveler\'s Hat',
                            :'Frontline Field Recorder'
                        ]
                    }
                },
                {
                    engineer: {
                        title: 'Engineer Shotgun',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Shotgun',
                            :'Frontier Justice',
                            :'Widowmaker',
                            :'Pomson 6000',
                            :'Rescue Ranger',
                            :'Panic Attack'
                        ]
                    },
                    engineer_secondary_weapon: {
                        title: 'Engineer Secondary Weapon',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Pistol',
                            :'Wrangler',
                            :'Short Circuit'
                        ]
                    },
                    wrench: {
                        title: 'Wrench',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Wrench',
                            :'Gunslinger',
                            :'Southern Hospitality',
                            :'Jag',
                            :'Eureka Effect'
                        ]
                    },
                    engineer_hat: {
                        help: "This is optional, unless you don't want it to be, in which case it isn't",
                        title: 'Engineer Hat',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Mining light',
                            :'Texas ten gallon',
                            :'Engineer\'s cap',
                            :'Hotrod',
                            :'Texas Slim\'s Dome Shine',
                            :'Safe\'n\'Sound',
                            :'Buckaroo\'s Hat',
                            :'Industrial Festivizer',
                            :'Western Wear',
                            :'Ol\' Geezer',
                            :'Cheater\'s lament',
                            :'Ghastly gibus',
                            :'Bill\'s Hat',
                            :'Max\'s severed head',
                            :'Wiki Cap',
                            :'Alien Swarm Parasite',
                            :'Modest pile of hat',
                            :'Noble amassment of hats',
                            :'Towering pillar of hats',
                            :'Mann Co Cap Ellis\' Cap',
                            :'Saxton Hale Mask',
                            :'Horrific Headsplitter',
                            :'Spine-Chilling Skull',
                            :'Voodoo Juju Treasure Hat',
                            :'Bounty Hat',
                            :'Hat of Undeniable Wealth And Respect',
                            :'The Athletic Supporter',
                            :'World Traveler\'s Hat',
                            :'Frontline Field Recorder'
                        ]
                    }
                },
                {
                    medic: {
                        title: 'Medigun',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Medi Gun',
                            :'Kritzkrieg',
                            :'Quick-Fix',
                            :'Vaccinator'
                        ]
                    },
                    syringe_gun: {
                        title: 'Syringe Gun',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Syringe Gun',
                            :'Blutsauger',
                            :'Crusader\'s Crossbow',
                            :'Overdose'
                        ]
                    },
                    saw: {
                        title: 'Saw',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Bonesaw',
                            :'Übersaw',
                            :'Vita-Saw',
                            :'Amputator',
                            :'Solemn Vow'
                        ]
                    },
                    medic_hat: {
                        help: "This is optional, unless you don't want it to be, in which case it isn't",
                        title: 'Medic Hat',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Prussian Pickelhaube',
                            :'Vintage Tyrolean',
                            :'Otolaryngologist\'s mirror',
                            :'Physician\'s procedure mask',
                            :'Ze Goggles',
                            :'Gentleman\'s Gatsby',
                            :'Berliner\'s Bucket Helm',
                            :'Blighted Beak',
                            :'German Gonzila',
                            :'Geisha Boy',
                            :'Doctor\'s Sack',
                            :'Cheater\'s lament',
                            :'Ghastly gibus',
                            :'Bill\'s Hat',
                            :'Team Captain',
                            :'Max\'s severed head',
                            :'Wiki Cap',
                            :'Alien Swarm Parasite',
                            :'Modest pile of hat',
                            :'Noble amassment of hats',
                            :'Towering pillar of hats',
                            :'Mann Co Cap Ellis\' Cap',
                            :'Saxton Hale Mask',
                            :'Horrific Headsplitter',
                            :'Spine-Chilling Skull',
                            :'Voodoo Juju Treasure Hat',
                            :'Bounty Hat',
                            :'Hat of Undeniable Wealth And Respect',
                            :'The Athletic Supporter',
                            :'World Traveler\'s Hat',
                            :'Frontline Field Recorder'
                        ]
                    }
                },
                {
                    sniper: {
                        title: 'Rifle',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Sniper Rifle',
                            :'Huntsman',
                            :'Sydney Sleeper',
                            :'Bazaar Bargain',
                            :'Machina',
                            :'Hitman\'s Heatmaker',
                            :'Classic'
                        ]
                    },
                    sniper_secondary_weapon: {
                        title: 'Sniper Secondary Weapon',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Submachine Gun',
                            :'Jarate',
                            :'Razorback',
                            :'Darwin\'s Danger Shield',
                            :'Cozy Camper',
                            :'Cleaner\'s Carbine'
                        ]
                    },
                    sniper_melee_weapon: {
                        title: 'Sniper Melee Weapon',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Kukri',
                            :'Tribalman\'s Shiv',
                            :'Bushwacka',
                            :'Shahanshah'
                        ]
                    },
                    sniper_hat: {
                        help: "This is optional, unless you don't want it to be, in which case it isn't",
                        title: 'Sniper Hat',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Trophy belt',
                            :'Professional\'s panama',
                            :'Master\'s yellow belt',
                            :'Shooter\'s sola topi',
                            :'Bloke\'s bucket hat',
                            :'Ritzy Rick\'s Hair Fixative',
                            :'Ol\' Snaggletooth',
                            :'Larrikin Robin',
                            :'Crocleather Slouch',
                            :'Cheater\'s lament',
                            :'Ghastly gibus',
                            :'Bill\'s Hat',
                            :'Max\'s severed head',
                            :'Wiki Cap',
                            :'Alien Swarm Parasite',
                            :'Modest pile of hat',
                            :'Noble amassment of hats',
                            :'Towering pillar of hats',
                            :'Mann Co Cap Ellis\' Cap',
                            :'Saxton Hale Mask',
                            :'Horrific Headsplitter',
                            :'Spine-Chilling Skull',
                            :'Voodoo Juju Treasure Hat',
                            :'Bounty Hat',
                            :'Hat of Undeniable Wealth And Respect',
                            :'The Athletic Supporter',
                            :'World Traveler\'s Hat',
                            :'Frontline Field Recorder'
                        ]
                    }
                },
                {
                    spy: {
                        title: 'Knife',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Knife',
                            :'Your Eternal Reward',
                            :'Conniver\'s Kunai',
                            :'Big Earner',
                            :'Spy-cicle'
                        ]
                    },
                    spy_pistol: {
                        title: 'Spy Pistol',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Revolver',
                            :'Ambassador',
                            :'L\'Etranger',
                            :'Enforcer',
                            :'Diamondback'
                        ]
                    },
                    watch: {
                        title: 'Watch',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Invis Watch',
                            :'Cloak and Dagger',
                            :'Dead Ringer'
                        ]
                    },
                    sapper: {
                        title: 'Sapper',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Sapper',
                            :'Red-Tape Recorder'
                        ]
                    },
                    spy_hat: {
                        help: "This is optional, unless you don't want it to be, in which case it isn't",
                        title: 'Spy Hat',
                        chance_of_multiple: 0,
                        min: 1,
                        max: 1,
                        options: [
                            :'Fancy fedora',
                            :'Backbiter\'s billycock',
                            :'Magistrate\'s mullet',
                            :'Frenchman\'s beret',
                            :'Familiar Fez',
                            :'Detective Noir',
                            :'Le Party Phantom',
                            :'Noh Mercy',
                            :'Cheater\'s lament',
                            :'Ghastly gibus',
                            :'Bill\'s Hat',
                            :'Max\'s severed head',
                            :'Wiki Cap',
                            :'Alien Swarm Parasite',
                            :'Modest pile of hat',
                            :'Noble amassment of hats',
                            :'Towering pillar of hats',
                            :'Mann Co Cap Ellis\' Cap',
                            :'Saxton Hale Mask',
                            :'Horrific Headsplitter',
                            :'Spine-Chilling Skull',
                            :'Voodoo Juju Treasure Hat',
                            :'Bounty Hat',
                            :'Hat of Undeniable Wealth And Respect',
                            :'The Athletic Supporter',
                            :'World Traveler\'s Hat',
                            :'Frontline Field Recorder'
                        ]
                    }
                },
            ]
        },
        game_type: {
            sub_trees: [
                :arena_map, :capture_the_flag_map, :control_point_map, :standard_control_point_map,
                :domination_control_point_map, :"attack/defend_map", :king_of_the_hill_map, :"mann_vs._machine_map",
                :payload_map, :payload_race_map, :special_delivery_map, :territorial_control_map
            ],
            chance_of_multiple: 0,
            min: 1,
            max: 1,
            options: [
            {
                        arena: {
                            title: 'Arena Map',
                            min: 1,
                            max: 1,
                            options: [
                                :Badlands,
                                :Granary,
                                :Lumberyard,
                                :Nucleus,
                                :Offblast,
                                :Ravine,
                                :Sawmill,
                                :Watchtower,
                                :Well,
                                :'Any community map'
                            ]
                    }
                },
                {
                    :'Capture the Flag' => {
                        title: 'Capture the Flag Map',
                        min: 1,
                        max: 1,
                        options: [
                            :'2Fort',
                            :'Double Cross',
                            :Sawmill,
                            :Turbine,
                            :Well,
                            :'Any community map'
                        ]
                    }
                },
                {
                    :'Control Point' => {
                        title: 'Control Point Map',
                        min: 1,
                        max: 1,
                        options: [
                            :'5Gorge',
                            :'Badlands',
                            :'Coldfront',
                            :'Fastlane',
                            :'Foundry',
                            :'Freight',
                            :'Granary',
                            :'Gullywash',
                            :'Process',
                            :'Snakewater',
                            :'Well',
                            :'Yukon',
                            :'Any community map'
                        ]
                    }
                },
                {
                    :'Domination Control Point' => {
                        title: 'Domination Control Point Map',
                        min: 1,
                        max: 1,
                        options: [
                            :Standin,
                            :'Any community map',
                        ]
                    }
                },
                {
                    :'Attack/Defend' => {
                        title: 'Attack/Defend map',
                        min: 1,
                        max: 1,
                        options: [
                            :'Dustbowl',
                            :'Egypt',
                            :'Gorge',
                            :'Gravel Pit',
                            :'Junction',
                            :'Steel',
                            :'Mountain Lab',
                            :'Mann Manor',
                            :'Any community map'
                        ]
                    }
                },
                {
                    :'King of the Hill' => {
                        title: 'King of the Hill Map',
                        min: 1,
                        max: 1,
                        options: [
                            :'Badlands',
                            :'Harvest',
                            :'Harvest Event',
                            :'Kong King',
                            :'Lakeside',
                            :'Nucleus',
                            :'Sawmill',
                            :'Viaduct',
                            :'Any community map'
                        ]
                    }
                },
                {
                    :'Mann vs. Machine' => {
                        title: 'Mann vs. Machine Map',
                        min: 1,
                        max: 1,
                        options: [
                            :'Bigrock',
                            :'Coal Town',
                            :'Decoy',
                            :'Ghost Town',
                            :'Mannhattan',
                            :'Mannworks',
                            :'Rottenburg',
                            :'Any community map'
                        ]
                    }
                },
                {
                    :Payload => {
                        title: 'Payload Map',
                        min: 1,
                        max: 1,
                        options: [
                            :'Badwater Basin',
                            :'Barnblitz',
                            :'Frontier',
                            :'Gold Rush',
                            :'Hoodoo',
                            :'Thunder Mountain',
                            :'Upward',
                            :'Any community map'
                        ]
                    }
                },
                {
                :'Payload Race' => {
                        title: 'Payload Race Map',
                        min: 1,
                        max: 1,
                        options: [
                            :'Hightower',
                            :'Pipeline',
                            :'Nightfall',
                            :'Any community map'
                        ]
                    }
                },
                {
                    :'Special Delivery' => {
                        title: 'Special Delivery Map',
                        min: 1,
                        max: 1,
                        options: [
                            :Doomsday,
                            :'Any community map'
                        ]
                    }
                },
                {
                    :'Territorial Control' => {
                        title: 'Territorial Control Map',
                        min: 1,
                        max: 1,
                        options: [
                            :Hydro,
                            :'Any community map',
                        ]
                    }
                },
                :'Any community map',
                :'Any official map'
            ]
        }
    }
}