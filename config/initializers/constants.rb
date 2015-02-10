def new_vegas_specials
    options = []
    total = 40
    (1..10).each do |s|
        (1..10).each do |p|
            (1..10).each do |e|
                (1..10).each do |c|
                    next if s + p + e + c + 30 < 40
                    break if s + p + e + c + 3 > 40
                    (1..10).each do |i|
                        next if s + p + e + c + i + 20 < 40
                        break if s + p + e + c + i + 2 > 40
                        (1..10).each do |a|
                            next if s + p + e + c + i + a + 10 < 40
                            break if s + p + e + c + i + a + 1 > 40
                            (1..10).each do |l|
                                if s + p + e + c + i + a + l == 40
                                    string = "#{s} #{p} #{e} #{c} #{i} #{a} #{l}"
                                    options.append string
                                end
                            end
                        end
                    end
                end
            end
        end
    end

    return options
end

GAMES = {
    mass_effect: {
        title: 'Mass Effect',
        background: 'masseffect1.jpg',
        next_game: :mass_effect_2,
        columns: {
            background: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Spacer',
                    :'Colonist',
                    :'Earthborn'
                ]
            },
            psychological_profile: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'War Hero',
                    :'Sole Survivor',
                    :'Ruthless'
                ]
            },
            morality: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Paragon',
                    :'Renegade',
                    :'Balanced'
                ]
            },
            class: {
                sub_trees: [
                    :vanguard_specialization, :adept_specialization, :soldier_specialization,
                    :engineer_specialization, :sentinel_specialization, :infiltrator_specialization
                ],
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    {
                        adept: {
                            title: 'Adept Specialization',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :Bastion,
                                :Nemesis
                            ]
                        }
                    },
                    {
                        soldier: {
                            title: 'Soldier Specialization',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :Commando,
                                :'Shock Trooper'
                            ]
                        }
                    },
                    {
                        engineer: {
                            title: 'Engineer Specialization',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :Medic,
                                :Operative
                            ]
                        }
                    },
                    {
                        vanguard: {
                            title: 'Vanguard Specialization',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :Nemesis,
                                :'Shock Trooper'
                            ]
                        }
                    },
                    {
                        sentinel: {
                            title: 'Sentinel Specialization',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :Medic,
                                :Bastion
                            ]
                        }
                    },
                    {
                        infiltrator: {
                            title: 'Infiltrator Specialization',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :Commando,
                                :Operative
                            ]
                        }
                    }
                ]
            },
            gender: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    {
                        male: {
                            title: 'Love Interest (Male)',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :Ashley,
                                :Liara,
                                :None
                            ]
                        }
                    },
                    {
                        female: {
                            title: 'Love Interest (Female)',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :Kaidan,
                                :Liara,
                                :None
                            ]
                        }
                    }
                ]
            },
            :"garrus's morality" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Push towards Paragon',
                    :'Push towards Renegade'
                ]
            },
            rachni_queen: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Kill',
                    :'Release'
                ]
            },
            bring_down_the_sky: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Let Balek go and save the hostages',
                    :'Kill Balek and let the hostages die'
                ]
            },
            wrex_on_virmire: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Talk Wrex down',
                    :'Kill Wrex'
                ]
            },
            ashley_or_kaidan: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :Ashley,
                    :Kaidan
                ]
            },
            the_council: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Save them',
                    :'Let them die'
                ]
            },
            human_council_member: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :Anderson,
                    :Udina
                ]
            }
        }
    },
    mass_effect_2: {
        title: 'Mass Effect 2',
        background: 'masseffect2.jpg',
        previous_game: :mass_effect,
        next_game: :mass_effect_3,
        columns: {
            morality: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Paragon',
                    :'Renegade',
                    :'Balanced'
                ]
            },
            class: {
                sub_trees: [
                    :vanguard_specialization, :adept_specialization, :soldier_specialization,
                    :engineer_specialization, :sentinel_specialization, :infiltrator_specialization
                ],
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    {
                        adept: {
                            title: 'Adept Specialization',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :Bastion,
                                :Nemesis
                            ]
                        }
                    },
                    {
                        soldier: {
                            title: 'Soldier Specialization',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :Commando,
                                :'Shock Trooper'
                            ]
                        }
                    },
                    {
                        engineer: {
                            title: 'Engineer Specialization',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :Mechanic,
                                :Demolisher
                            ]
                        }
                    },
                    {
                        vanguard: {
                            title: 'Vanguard Specialization',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :Champion,
                                :Destroyer
                            ]
                        }
                    },
                    {
                        sentinel: {
                            title: 'Sentinel Specialization',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :Guardian,
                                :Raider
                            ]
                        }
                    },
                    {
                        infiltrator: {
                            title: 'Infiltrator Specialization',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :Agent,
                                :Assassin
                            ]
                        }
                    }
                ]
            },
            gender: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    {
                        male: {
                            spoiler: true,
                            title: 'Love Interest (Male)',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :Miranda,
                                :Tali,
                                :Jack,
                                :Kelly,
                                :None
                            ]
                        }
                    },
                    {
                        female: {
                            spoiler: true,
                            title: 'Love Interest (Female)',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :Jacob,
                                :Garrus,
                                :Thane,
                                :Kelly,
                                :None
                            ]
                        }
                    }
                ]
            },
            Veetor: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Send to the Migrant Fleet',
                    :'Send to Cerberus'
                ]
            },
            :"Mordin's Loyalty Mission" => {
                spoiler: true,
                chance_of_multiple: 100,
                min: 2,
                max: 2,
                options: [
                    [
                        :'Let Mordin shoot Maelon',
                        :'Save Maelon'
                    ],
                    [
                        :'Destroy the data',
                        :'Save the data'
                    ]
                ]
            },
            :"Jacob's Loyalty Mission" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Leave his father',
                    :'Take his father into custody'
                ]
            },
            :"Miranda's Loyalty Mission" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"Don't tell her sister",
                    :'Tell her sister'
                ]
            },
            :"Jack's Loyalty Mission" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Let Aresh go',
                    :'Kill Aresh'
                ]
            },
            :"Garrus's Loyalty Mission" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Kill Sidonis',
                    :"Don't kill Sidonis"
                ]
            },
            :"Samara's Loyalty Mission" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Side with Samara',
                    :'Side with Morinth'
                ]
            },
            :"Tali's Loyalty Mission" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"Reveal the evidence",
                    :"Don't reveal the evidence",
                    :'Convince the Board to let Tali go free'
                ]
            },
            :"Legion's Loyalty Mission" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"Kill the traitors",
                    :"Brainwash the traitors"
                ]
            },
            :"Zaeed's Loyalty Mission" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"Chase Vido",
                    :"Let Vido go"
                ]
            },
            :"Kasumi's Loyalty Mission" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"Destroy the Greybox",
                    :"Keep the Greybox"
                ]
            },
            :"Project Overlord" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"Save David",
                    :"Leave David with Gavin"
                ]
            },
            :"Jack vs. Miranda" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"Side with Jack",
                    :"Side with Miranda",
                    :'Convince both'
                ]
            },
            :"Legion vs. Tali" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"Side with Legion",
                    :"Side with Tali",
                    :'Convince both'
                ]
            },
            :"The Normandy's Crew" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"Rush to help",
                    :"Rush to help",
                    :"Rush to help",
                    :"Don't rush to help"
                ]
            },
            :"Vent Specialist" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Kasumi',
                    :'Legion',
                    :'Tali',
                    :'Kasumi',
                    :'Legion',
                    :'Tali',
                    :'Kasumi',
                    :'Legion',
                    :'Tali',
                    :'Kasumi',
                    :'Legion',
                    :'Tali',
                    :'Kasumi',
                    :'Legion',
                    :'Tali',
                    :'Garrus',
                    :'Grunt',
                    :'Jack',
                    :'Jacob',
                    :'Miranda',
                    :'Mordin',
                    :'Samara/Morinth',
                    :'Thane',
                    :'Zaeed'
                ]
            },
            :"First Fire Team" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Garrus',
                    :'Miranda',
                    :'Jacob',
                    :'Garrus',
                    :'Miranda',
                    :'Jacob',
                    :'Garrus',
                    :'Miranda',
                    :'Jacob',
                    :'Garrus',
                    :'Miranda',
                    :'Jacob',
                    :'Garrus',
                    :'Miranda',
                    :'Jacob',
                    :'Kasumi',
                    :'Legion',
                    :'Tali',
                    :'Grunt',
                    :'Jack',
                    :'Mordin',
                    :'Samara/Morinth',
                    :'Thane',
                    :'Zaeed'
                ]
            },
            :"Biotic Specialist" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Samara/Morinth',
                    :'Jack',
                    :'Samara/Morinth',
                    :'Jack',
                    :'Samara/Morinth',
                    :'Jack',
                    :'Samara/Morinth',
                    :'Jack',
                    :'Samara/Morinth',
                    :'Jack',
                    :'Miranda',
                    :'Jacob',
                    :'Thane'
                ]
            },
            :"Second Fire Team" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Garrus',
                    :'Miranda',
                    :'Jacob',
                    :'Garrus',
                    :'Miranda',
                    :'Jacob',
                    :'Garrus',
                    :'Miranda',
                    :'Jacob',
                    :'Garrus',
                    :'Miranda',
                    :'Jacob',
                    :'Garrus',
                    :'Miranda',
                    :'Jacob',
                    :'Kasumi',
                    :'Legion',
                    :'Tali',
                    :'Grunt',
                    :'Jack',
                    :'Mordin',
                    :'Samara/Morinth',
                    :'Thane',
                    :'Zaeed'
                ]
            },
            :"Escort" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Mordin',
                    :'Tali',
                    :'Kasumi',
                    :'Jack',
                    :'Mordin',
                    :'Tali',
                    :'Kasumi',
                    :'Jack',
                    :'Mordin',
                    :'Tali',
                    :'Kasumi',
                    :'Jack',
                    :'Garrus',
                    :'Miranda',
                    :'Jacob',
                    :'Legion',
                    :'Grunt',
                    :'Samara/Morinth',
                    :'Thane',
                    :'Zaeed'
                ]
            },
            :"Final Battle Squad" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 2,
                max: 2,
                options: [
                    :'Mordin',
                    :'Tali',
                    :'Kasumi',
                    :'Jack',
                    :'Garrus',
                    :'Miranda',
                    :'Jacob',
                    :'Legion',
                    :'Grunt',
                    :'Samara/Morinth',
                    :'Thane',
                    :'Zaeed'
                ]
            },
            :"Collector Base" => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Destroy it',
                    :'Give it to Cerberus'
                ]
            }
        }
    },
    mass_effect_3: {
        title: 'Mass Effect 3',
        background: 'masseffect3.jpg',
        previous_game: :mass_effect_2,
        columns: {
            morality: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :Paragon,
                    :Renegade,
                    :Balanced
                ]
            },
            class: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Adept',
                    :'Soldier',
                    :'Engineer',
                    :'Sentinel',
                    :'Infiltrator',
                    :'Vanguard'
                ]
            },
            gender: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    {
                        male: {
                            spoiler: true,
                            title: 'Love Interest (Male)',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'If Romanced in ME2, Miranda. Otherwise reroll',
                                :'If Romanced in ME2, Tali. Otherwise reroll',
                                :'If Romanced in ME2, Jack. Otherwise reroll',
                                :'If Romanced in ME2, Kelly. Otherwise reroll',
                                :Ashley,
                                :'Steve Cortez',
                                :Kaiden,
                                :Liara,
                                :None
                            ]
                        }
                    },
                    {
                        female: {
                            spoiler: true,
                            title: 'Love Interest (Female)',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'If Romanced in ME2, Thane. Otherwise reroll',
                                :'If Romanced in ME2, Garrus. Otherwise reroll',
                                :'If Romanced in ME2, Kelly. Otherwise reroll',
                                :Samantha,
                                :Kaiden,
                                :Liara,
                                :None
                            ]
                        }
                    }
                ]
            },
            rachni_queen: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Save the Rachni Queen',
                    :'Save the Krogan Squad'
                ]
            },
            samara: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Let Samara kill herself, kill Falere',
                    :'Let Samara kill herself, do not kill Falere',
                    :'Stop Samara from killing herself',
                    :'Stop Samara from killing herself'
                ]
            },
            :'Omega: The Reactor' => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Slowly reroute the power',
                    :'Kill the power'
                ]
            },
            :'Omega: General Petrovsky' => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Convince Aria to spare him',
                    :'Let Aria kill him'
                ]
            },
            the_genophage: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Cure the genophage',
                    :'Do not cure the genophage'
                ]
            },
            :'Quarians and the Geth' => {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Give the Geth True Intelligence',
                    :'Side with the Quarians',
                    :'If possible, negotiate a ceasefire. If not, reroll'
                ]
            },
            party_theme: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :Quiet,
                    :Wild
                ]
            },
            ending: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :Control,
                    :Synthesize,
                    :Destroy,
                    :Refuse
                ]
            }
        }
    },
    kerbalspaceprogram: {
        title: 'Kerbal Space Program',
        background: 'ksp.jpg',
        columns: {
            target_body: {
                sub_trees: [
                    :goal_for_kerbol,
                    :goal_for_moho,
                    :goal_for_eve,
                    :goal_for_gilly,
                    :goal_for_kerbin,
                    :goal_for_the_mun,
                    :goal_for_minmus,
                    :goal_for_duna,
                    :goal_for_ike,
                    :goal_for_dres,
                    :goal_for_jool,
                    :goal_for_laythe,
                    :goal_for_vall,
                    :goal_for_tylo,
                    :goal_for_bop,
                    :goal_for_pol,
                    :goal_for_eeloo,
                    :goal_for_an_asteroid
                ],
                chance_of_multiple: 5,
                min: 1,
                max: 8,
                options: [
                    {
                        :'Kerbol' => {
                            title: 'Goal For Kerbol',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous between two ships',
                                :'Perform a rendevous and dock two ships',
                                :'Achieve a geosynchronous orbit above Kerbol',
                                :'Construct a Space Station in orbit of Kerbol',
                                :"Enter Kerbol's sphere of influence",
                                :'Kill a Kerbal on the surface of the sun',
                                :'Achieve orbit and return safely to Kerbin'
                            ]
                        }
                    },
                    {
                        :'Moho' => {
                            title: 'Goal For Moho',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous between two ships',
                                :'Perform a rendevous and dock two ships',
                                :'Put a satellite in orbit',
                                :'Land a capsule containing a Kerbal',
                                :'Construct a Multi-Part Ship on or above Moho',
                                :'Construct a Space Station in orbit',
                                :"Enter Moho's sphere of influence",
                                :'Kill a Kerbal in style',
                                :'Rescue a Kerbal from Moho',
                                :'Visit and return',
                                :'Land on and return',
                                :'Plant a flag',
                                :'Construct a base',
                                :'Land a rover on the surface',
                                :'Achieve orbit and return safely to Kerbin'
                            ]
                        }
                    },
                    {
                        :'Eve' => {
                            title: 'Goal For Eve',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous between two ships',
                                :'Perform a rendevous and dock two ships',
                                :'Achieve a geosynchronous orbit above Eve',
                                :'Put a satellite in orbit',
                                :'Land a capsule containing a Kerbal',
                                :'Construct a Multi-Part Ship on or above Eve',
                                :'Construct a Space Station in orbit',
                                :"Enter Eve's sphere of influence",
                                :'Kill a Kerbal in style',
                                :'Rescue a Kerbal from Eve',
                                :'Visit and return',
                                :'Land on and return',
                                :'Plant a flag',
                                :'Construct a base',
                                :'Land a rover on the surface',
                                :'Send a plane to Eve',
                                :'Achieve orbit and return safely to Kerbin'
                            ]
                        }
                    },
                    {
                        :'Gilly' => {
                            title: 'Goal For Gilly',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous between two ships',
                                :'Perform a rendevous and dock two ships',
                                :'Put a satellite in orbit',
                                :'Land a capsule containing a Kerbal',
                                :'Construct a Space Station',
                                :"Enter Gilly's sphere of influence",
                                :'Kill a Kerbal in style',
                                :'Rescue a Kerbal from Gilly',
                                :'Visit and return from Gilly',
                                :'Land on and return',
                                :'Plant a flag',
                                :'Construct a base',
                                :'Land a rover on the surface',
                                :'Achieve orbit and return safely to Kerbin'
                            ]
                        }
                    },
                    {
                        :'Kerbin' => {
                            title: 'Goal For Kerbin',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous',
                                :'Perform a rendevous and dock two ships',
                                :'Achieve a geosynchronous orbit above Kerbin',
                                :'Put a satellite in orbit',
                                :'Send a capsule to the north pole',
                                :'Send a capsule to the south pole',
                                :'Land a plane on the island airstrip',
                                :'Discover an anomaly',
                                :'Construct a space station in orbit over multiple launches',
                                :'Kill a Kerbal in style',
                                :'Rescue a Kerbal from orbit with a different ship to the one that put him there',
                                :'Achieve orbit and return safely to the launchpad',
                                :'Construct a base at the north pole',
                                :'Send a rover to the north pole',
                                :'Construct a base at the south pole',
                                :'Send a rover to the south pole',
                                :"Leave Kerbin's sphere of influence"
                            ]
                        }
                    },
                    {
                        :'Mun' => {
                            title: 'Goal For The Mun',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous between two ships',
                                :'Perform a rendevous and dock two ships',
                                :'Put a satellite in orbit',
                                :'Land a capsule containing a Kerbal',
                                :'Land a rover on the Mun',
                                :'Discover an anomaly',
                                :'Construct a space station in orbit',
                                :'Kill a Kerbal in style',
                                :'Rescue a Kerbal from the Mun with a different ship to the one that put him there',
                                :'Achieve orbit and return safely to Kerbin'
                            ]
                        }
                    },
                    {
                        :'Minmus' => {
                            title: 'Goal For Minmus',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve orbit with a jetpack',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous between two ships',
                                :'Perform a rendevous and dock two ships',
                                :'Put a satellite in orbit',
                                :'Land a capsule containing a Kerbal',
                                :'Land a rover on Minmus',
                                :'Construct a space station in orbit',
                                :'Kill a Kerbal in style',
                                :'Rescue a Kerbal from the Mun with a different ship to the one that put him there',
                                :'Achieve orbit and return safely to Kerbin'
                            ]
                        }
                    },
                    {
                        :'Duna' => {
                            title: 'Goal For Duna',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous',
                                :'Perform a rendevous and dock two ships',
                                :'Achieve a geosynchronous orbit above Duna',
                                :'Put a satellite in orbit',
                                :'Land a capsule containing a Kerbal',
                                :'Send a plane to Duna',
                                :'Construct a space station in orbit over multiple launches',
                                :'Kill a Kerbal in style',
                                :'Rescue a Kerbal from orbit with a different ship to the one that put him there',
                                :'Land a rover on Duna',
                                :'Construct a base',
                                :'Achieve orbit and return safely to Kerbin'
                            ]
                        }
                    },
                    {
                        :'Ike' => {
                            title: 'Goal For Ike',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous',
                                :'Perform a rendevous and dock two ships',
                                :'Put a satellite in orbit',
                                :'Land a capsule containing a Kerbal',
                                :'Construct a space station in orbit over multiple launches',
                                :'Kill a Kerbal in style',
                                :'Rescue a Kerbal from orbit with a different ship to the one that put him there',
                                :'Land a rover on Ike',
                                :'Construct a base',
                                :'Achieve orbit and return safely to Kerbin'
                            ]
                        }
                    },
                    {
                        :'Dres' => {
                            title: 'Goal For Dres',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous',
                                :'Perform a rendevous and dock two ships',
                                :'Put a satellite in orbit',
                                :'Land a capsule containing a Kerbal',
                                :'Construct a space station in orbit over multiple launches',
                                :'Kill a Kerbal in style',
                                :'Rescue a Kerbal from orbit with a different ship to the one that put him there',
                                :'Land a rover on Dres',
                                :'Construct a base',
                                :'Achieve orbit and return safely to Kerbin'
                            ]
                        }
                    },
                    {
                        :'Jool' => {
                            title: 'Goal For Jool',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous',
                                :'Perform a rendevous and dock two ships',
                                :'Achieve a geosynchronous orbit above Jool',
                                :'Put a satellite in orbit',
                                :'Construct a space station in orbit over multiple launches',
                                :'Kill a Kerbal in style',
                                :'Rescue a Kerbal from orbit with a different ship to the one that put him there',
                                :'Achieve orbit and return safely to Kerbin'
                            ]
                        }
                    },
                    {
                        :'Laythe' => {
                            title: 'Goal For Laythe',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous',
                                :'Perform a rendevous and dock two ships',
                                :'Put a satellite in orbit',
                                :'Send a capsule with a Kerbal to Laythe',
                                :'Land a plane on the island airstrip',
                                :'Construct a space station in orbit over multiple launches',
                                :'Kill a Kerbal in style',
                                :'Rescue a Kerbal from orbit with a different ship to the one that put him there',
                                :'Achieve orbit and return safely to Kerbin',
                                :'Construct a base',
                                :'Land a boat on Laythe'
                            ]
                        }
                    },
                    {
                        :'Vall' => {
                            title: 'Goal For Vall',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous between two ships',
                                :'Perform a rendevous and dock two ships',
                                :'Put a satellite in orbit',
                                :'Land a capsule containing a Kerbal',
                                :'Land a rover on the Vall',
                                :'Construct a space station in orbit',
                                :'Kill a Kerbal in style',
                                :'Rescue a Kerbal from Vall with a different ship to the one that put him there',
                                :'Achieve orbit and return safely to Kerbin'
                            ]
                        }
                    },
                    {
                        :'Tylo' => {
                            title: 'Goal For Tylo',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous between two ships',
                                :'Perform a rendevous and dock two ships',
                                :'Put a satellite in orbit',
                                :'Land a capsule containing a Kerbal',
                                :'Land a rover on the Tylo',
                                :'Construct a space station in orbit',
                                :'Kill a Kerbal in style',
                                :'Rescue a Kerbal from Tylo with a different ship to the one that put him there',
                                :'Achieve orbit and return safely to Kerbin'
                            ]
                        }
                    },
                    {
                        :'Bop' => {
                            title: 'Goal For Bop',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous between two ships',
                                :'Perform a rendevous and dock two ships',
                                :'Put a satellite in orbit',
                                :'Land a capsule containing a Kerbal',
                                :'Land a rover on Bop',
                                :'Construct a space station in orbit',
                                :'Kill a Kerbal in style',
                                :'Rescue a Kerbal from Bop with a different ship to the one that put him there',
                                :'Achieve orbit and return safely to Kerbin'
                            ]
                        }
                    },
                    {
                        :'Pol' => {
                            title: 'Goal For Pol',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous between two ships',
                                :'Perform a rendevous and dock two ships',
                                :'Put a satellite in orbit',
                                :'Land a capsule containing a Kerbal',
                                :'Land a rover on Pol',
                                :'Construct a space station in orbit',
                                :'Kill a Kerbal in style',
                                :'Rescue a Kerbal from Pol with a different ship to the one that put him there',
                                :'Achieve orbit and return safely to Kerbin'
                            ]
                        }
                    },
                    {
                        :'Eeloo' => {
                            title: 'Goal For Eeloo',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Achieve orbit',
                                :'Achieve an equatorial orbit',
                                :'Achieve a polar orbit',
                                :'Perform a rendevous between two ships',
                                :'Perform a rendevous and dock two ships',
                                :'Put a satellite in orbit',
                                :'Land a capsule containing a Kerbal',
                                :'Land a rover on Eeloo',
                                :'Construct a space station in orbit',
                                :'Kill a Kerbal in style',
                                :'Rescue a Kerbal from Eeloo with a different ship to the one that put him there',
                                :'Achieve orbit and return safely to Kerbin'
                            ]
                        }
                    },
                    {
                        :'Asteroid' => {
                            title: 'Goal For an Asteroid',
                            chance_of_multiple: 25,
                            min: 1,
                            max: 5,
                            options: [
                                :'Perform a rendevous with an asteroid',
                                :'Land a capsule containing a Kerbal on an asteroid',
                                :'Land a rover on an asteroid',
                                :'Kill a Kerbal in style on an asteroid',
                                :'Perform a rendevous with an asteroid and return to Kerbin',
                                :'Crash an asteroid into a planet',
                                :'Bring an asteroid back to Kerbin',
                                :'Bring an asteroid back to Kerbin and put it in a stable orbit',
                                :'Bring an asteroid back to Kerbin and put it in a stable orbit, construct a space station around it',
                                :'Dock with an asteroid',
                                :'Destroy a building at the KSC using an asteroid'
                            ]
                        }
                    }
                ]
            }
        }
    },
    the_witcher: {
        spoiler: true,
        title: 'The Witcher',
        background: 'witcher.jpg',
        next_game: :the_witcher_2,
        columns: {
            triss_or_vesemir: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Save Triss',
                    :'Fight the frightener'
                ]
            },
            the_escort: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Escort Vesna',
                    :"Don't escort Vesna"
                ]
            },
            racist_encounter: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Help Zoltan',
                    :"Don't help Zoltan"
                ]
            },
            arms: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"Help the Scoia'tael",
                    :"Don't help the Scoia'tael",
                    :"Kill the Scoia'tael"
                ]
            },
            lesser_evil: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Save Abigail',
                    :'Side with the Reverend'
                ]
            },
            seigfried: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Fight with Siegfried',
                    :'Fight alone'
                ]
            },
            force_recon: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"Side with the Scoia'tael",
                    :'Side with the Order',
                    :'Remain Neutral'
                ]
            },
            guardian: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Leave Alvin with Shani',
                    :'Leave Alvin with Triss'
                ]
            },
            thaler: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Kill Thaler',
                    :'Spare Thaler'
                ]
            },
            werewolf: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Kill him',
                    :'Save and cure him',
                    :"Save but don't cure him"
                ]
            },
            bank_robbery: {
                sub_trees: [  
                    :vodyenoi_conflict, :forgiveness, 
                    :"continue_with_the_scoia'tael?", :'continue_with_the_order?'
                ],
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    {
                        :"Side with the Scoia'tael" => {
                            title: 'Vodyenoi Conflict',
                            spoiler: true,
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'Side with the Vodyenoi',
                                :'Side with the village',
                                :'Reach a compromise'
                            ]
                        },
                        forgiveness: {
                            spoiler: true,
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'Kill Berengar',
                                :'Spare Berengar'
                            ]
                        },
                        :"Continue with the Scoia'tael?" => {
                            spoiler: true,
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :"Side with the Scoia'tael",
                                :'Stay Neutral'
                            ]
                        }
                    },
                    {
                        :'Side with the Order' => {
                            title: 'Vodyenoi Conflict',
                            spoiler: true,
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'Side with the Vodyenoi',
                                :'Side with the village',
                                :'Reach a compromise'
                            ]
                        },
                        forgiveness: {
                            spoiler: true,
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'Kill Berengar',
                                :'Spare Berengar'
                            ]
                        },
                        :'Continue with the Order?' => {
                            spoiler: true,
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'Side with the Order',
                                :'Stay Neutral'
                            ]
                        }
                    }
                ]
            },
            striga: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Kill Princess Adda',
                    :'Save Princess Adda'
                ]
            },
            king_of_the_wild_hunt: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"Let the King of the Wild Hunt have Jacques de Aldersberg's Soul",
                    :"Do not let the King of the Wild Hunt have Jacques de Aldersberg's Soul"
                ]
            },
        }
    },
    the_witcher_2: {
        spoiler: true,
        title: 'The Witcher 2',
        background: 'witcher2.jpg',
        previous_game: :the_witcher,
        columns: {
            aryan: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Kill',
                    :'Save'
                ]
            },
            malena: {
                spoiler: true,
                chance_of_multiple: 0,
                max: 1,
                options: [
                    :'Accuse',
                    :'Accuse and Follow',
                    :'Side with her'
                ]
            },
            iorveth_sword: {
                spoiler: true,
                chance_of_multiple: 0,
                max: 1,
                options: [
                    :'Give him his sword',
                    :'Punch him in the throat'
                ]
            },
            roche_or_iorveth: {
                spoiler: true,
                sub_trees: [:hensalt, :stennis, :hero_or_avenger, :triss_or_temeria, :saskia_or_triss],
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    {
                        roche: {
                            spoiler: true,
                            title: 'Hensalt',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'Kill',
                                :'Save'
                            ]
                        },
                        triss_or_temeria: {
                            spoiler: true,
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'Triss',
                                :'Temeria'
                            ]
                        }
                    },
                    {
                        iorveth: {
                            title: 'Stennis',
                            spoiler: true,
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'Kill',
                                :'Save'
                            ]
                        },
                        hero_or_avenger: {
                            spoiler: true,
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'Go after Loredo',
                                :'Save the Elven women'
                            ]
                        },
                        saskia_or_triss: {
                            spoiler: true,
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'Saskia',
                                :'Triss'
                            ]
                        }
                    }
                ]
            },
            the_flawed_diamond: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Remove the diamond',
                    :'Leave the diamond'
                ]
            }
        }
    },
    civilization_v: {
        title: 'Civilization V',
        background: 'civ5.jpg',
        columns: {
            civilization: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'America',
                    :'Arabia',
                    :'Assyria',
                    :'Austria',
                    :'Aztecs',
                    :'Babylon',
                    :'Brazil',
                    :'Byzantium',
                    :'Carthage',
                    :'Celts',
                    :'China',
                    :'Denmark',
                    :'Egypt',
                    :'England',
                    :'Ethiopia',
                    :'France',
                    :'Germany',
                    :'Greece',
                    :'Huns',
                    :'Inca',
                    :'India',
                    :'Indonesia',
                    :'Iroquois',
                    :'Japan',
                    :'Korea',
                    :'Maya',
                    :'Mongolia',
                    :'Morocco',
                    :'Netherlands',
                    :'Ottomans',
                    :'Persia',
                    :'Poland',
                    :'Polynesia ',
                    :'Portugal',
                    :'Rome',
                    :'Russia',
                    :'Shoshone',
                    :'Siam',
                    :'Songhai',
                    :'Spain',
                    :'Sweden',
                    :'Venice',
                    :'Zulus'
                ]
            },
            victory_type: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Domination',
                    :'Science',
                    :'Cultural',
                    :'Diplomatic'
                ]
            },
            ideology: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Freedom',
                    :'Autocracy',
                    :'Order'
                ]
            },
            personality: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Hostile',
                    :'Friendly',
                    :'Deceptive',
                    :'Cautious',
                    :'Neutral',
                    :'Warmonger',
                    :'Friendly to trade partners',
                    :'Friendly to those who share your religion',
                    :'Friendly to those of your ideology'
                ]
            },
            required_policy_trees: {
                chance_of_multiple: 33,
                min: 1,
                max: 3,
                options: [
                    :'Liberty',
                    :'Tradition',
                    :'Honor',
                    :'Piety',
                    :'Patronage',
                    :'Commerce',
                    :'Rationalism'
                ]
            },
            religion: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Buddism',
                    :'Catholicism',
                    :'Confucianism',
                    :'Eastern Orthodoxy',
                    :'Hinduism ',
                    :'Islam',
                    :'Judaism',
                    :'Protestantism',
                    :'Shinto',
                    :'Sikhism',
                    :'Taoism',
                    :'Tengriism',
                    :'Zoroastrianism'
                ]
            },
            expansion_policy: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Tall',
                    :'Tall',
                    :'Tall',
                    :'Wide',
                    :'Wide',
                    :'Wide',
                    :'Balanced',
                    :'Balanced',
                    :'Balanced',
                    :'One City Challenge'
                ]
            },
            goal_wonders: {
                chance_of_multiple: 45,
                min: 1,
                max: 7,
                options: [
                    :'The Great Library',
                    :'The Mausoleum of Halicarnassus',
                    :'Pyramids',
                    :'The Statue of Zeus',
                    :'Stonehenge',
                    :'Temple of Artemis',
                    :'The Colossus',
                    :'The Great Lighthouse',
                    :'The Great Wall',
                    :'The Hanging Gardens',
                    :'Oracle',
                    :'The Parthenon',
                    :'Petra',
                    :'The Terracotta Army',
                    :'Alhambra',
                    :'Angkor Wat',
                    :'Borobudur',
                    :'Chichen Itza',
                    :'Great Mosque of Djenne',
                    :'Hagia Sophia',
                    :'Machu Picchu',
                    :'Notre Dame',
                    :'Forbidden Palace',
                    :'Globe Theatre',
                    :'Himeji Castle',
                    :'Leaning Tower of Pisa',
                    :'The Porcelain Tower',
                    :'Red Fort',
                    :'The Sistine Chapel',
                    :'The Taj Mahal',
                    :'Uffizi',
                    :'Big Ben',
                    :'Brandenburg Gate',
                    :'Louvre',
                    :'Broadway',
                    :'Neuschwanstein',
                    :'The Statue of Liberty',
                    :'Cristo Redentor',
                    :'The Great Firewall',
                    :'The Internet',
                    :'Pentagon',
                    :'Sydney Opera House',
                    :'CN Tower',
                    :'Hubble Space Telescope',
                    :'Spaceship Factory',
                    :'International Space Station'
                ]
            },
            game_pace: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Free Pick',
                    :'Quick',
                    :'Standard',
                    :'Epic',
                    :'Marathon'
                ]
            },
            map_size: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Free Pick',
                    :'Duel',
                    :'Tiny',
                    :'Small',
                    :'Standard',
                    :'Large',
                    :'Huge'
                ]
            },
            map_type: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Free Pick',
                    :'Archipelago',
                    :'Continents',
                    :'4 Corners',
                    :'Fractal',
                    :'Great Plains',
                    :'Highlands',
                    :'Ice Age',
                    :'Inland Sea',
                    :'Lakes',
                    :'North V South',
                    :'Oval',
                    :'Pangea',
                    :'Skirmish',
                    :'Small Continents',
                    :'Terra',
                    :'Tiny Islands',
                    :'West V East',
                    :'Amazon Plus',
                    :'Arborea',
                    :'Boreal',
                    :'Europe',
                    :'Frontier',
                    :'Great Plains Plus',
                    :'Hemispheres',
                    :'Rainforest',
                    :'Tilted Axis'
                ]
            }
        }
    },
    skyrim: {
        title: 'Skyrim',
        background: 'skyrim.jpg',
        columns: {
            race: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Altmer',
                    :'Argonian',
                    :'Bosmer',
                    :'Breton',
                    :'Dunmer',
                    :'Imperial',
                    :'Khajiit',
                    :'Nord',
                    :'Orsimer',
                    :'Redguard'
                ]
            },
            birthsign: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'The Apprentice',
                    :'The Atronach',
                    :'The Lady',
                    :'The Lord',
                    :'The Lover',
                    :'The Mage',
                    :'The Ritual',
                    :'The Serpent',
                    :'The Shadow',
                    :'The Steed',
                    :'The Thief',
                    :'The Tower',
                    :'The Warrior'
                ]
            },
            focus_skills: {
                chance_of_multiple: 100,
                min: 3,
                max: 3,
                options: [
                    :'Illusion',
                    :'Conjuration',
                    :'Restoration',
                    :'Alteration',
                    :'Enchanting',
                    :'Smithing',
                    :'Block',
                    :'Sneak',
                    :'Lockpicking',
                    :'Pickpocket',
                    :'Speech',
                    :'Alchemy'
                ]
            },
            factions_to_join: {
                chance_of_multiple: 50,
                min: 1,
                max: 5,
                options: [
                    :"Bard's College",
                    :'College of Winterhold',
                    :'The Companions',
                    :'Dark Brotherhood',
                    :'Thieves Guild'
                ]
            },
            weapons: {
                chance_of_multiple: 100,
                min: 2,
                max: 2,
                options: [
                    [
                        :'Daggers',
                        :'Dagger and Shield'
                    ],
                    [
                        :'Maces',
                        :'Mace and Shield'
                    ],
                    [
                        :'One Handed Swords',
                        :'Sword and Shield'
                    ],
                    [
                        :'War Axes',
                        :'War Axe and Shield'
                    ],
                    [
                        :'Destruction',
                        :'Destruction and Shield'
                    ],
                    :'Battleaxes',
                    :'Greatswords',
                    :'Warhammers',
                    :'Bows',
                    :'Destruction',
                    :'Crossbows',
                ]
            },
            armour: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Heavy',
                    :'Heavy',
                    :'Heavy',
                    :'Heavy',
                    :'Heavy',
                    :'Light',
                    :'Light',
                    :'Light',
                    :'Light',
                    :'Light',
                    :'Regular Clothes',
                    :'Robes',
                    :'Robes'
                ]
            },
            civil_war_side: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Imperial Legion',
                    :'Stormcloaks'
                ]
            },
            dawnguard_side: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'The Volkihar Clan',
                    :'The Dawnguard'
                ]
            },
            home: {
                chance_of_multiple: 20,
                min: 1,
                max: 8,
                options: [
                    :'Breezehome (Whiterun)',
                    :'Honeyside (Riften)',
                    :'Vlindrel Hall (Markarth)',
                    :'Hjerim (Windhelm)',
                    :'Proudspire Manor (Solitude)',
                    :'Heljarchen Hall (Dawnstar)',
                    :'Lakeview Manor (Falkreath)',
                    :'Windstad Manor (Morthal)',
                ]
            },
            companion: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Housecarl for your home city',
                    :'Belrand',
                    :'Erik the Slayer',
                    :'Jenassa',
                    :'Marcurio',
                    :'Stenvar',
                    :'Teldryn',
                    :'Vorstag',
                    :'Adelaisa Vendicci ',
                    :'Ahtar',
                    :'Annekke Crag-Jumper',
                    :'Aranea Ienith',
                    :'Eola',
                    :'Erandur',
                    :'Faendal',
                    :'Frea',
                    :'Golldir',
                    :'Illia',
                    :'Kharjo',
                    :'Lob',
                    :'Mjoll the Lioness',
                    :'Ogol',
                    :'Ralis Sedarys',
                    :'Roggi Knot-Beard',
                    :'Serana',
                    :'Sven',
                    :'Talvas Fathryon',
                    :'Ugor',
                    :'Benor',
                    :'Borgakh the Steel Heart',
                    :'Cosnach',
                    :'Derkeethus',
                    :'Ghorbash the Iron Hand',
                    :'Uthgerd the Unbroken',
                    :'Meeko',
                    :'Vigilance'
                ]
            },
            freelance_theft: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'No freelance theft',
                    :"If its too tempting to resist",
                    :'Habitual',
                    :"If it's not nailed down, it's yours"
                ]
            },
            unprovoked_murder: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'No murder',
                    :'Occasional',
                    :'Frequent',
                    :'Constant rampage'
                ]
            }
        }
    },
    minecraft: {
        title: 'Minecraft',
        background: 'minecraft.png',
        columns: {
            biome: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"Frozen River",
                    :"Ice Plains",
                    :"Ice Plains Spikes",
                    :"Cold Beach",
                    :"Cold Taiga",
                    :"Mountainous Cold Taiga",
                    :"Extreme Hills",
                    :"Mountainous Extreme Hills",
                    :"Taiga",
                    :"Taiga M",
                    :"Mega Taiga",
                    :"Spruce Taiga M",
                    :"Extreme Hills+",
                    :"Extreme Hills+ M",
                    :"Stone Beach",
                    :"Plains",
                    :"Sunflower Plains",
                    :"Forest",
                    :"Flower Forest",
                    :"Swampland",
                    :"Swampland M",
                    :"River",
                    :"Beach",
                    :"Jungle",
                    :"Jungle M",
                    :"Jungle Edge",
                    :"Jungle Edge M",
                    :"Birch Forest",
                    :"Birch Forest M",
                    :"Birch Forest Hills",
                    :"Birch Forest Hills M",
                    :"Roofed Forest",
                    :"Roofed Forest M",
                    :"Mushroom Island",
                    :"Mushroom Island Shore",
                    :"Desert",
                    :"Desert M",
                    :"Savanna",
                    :"Savanna M",
                    :"Mesa",
                    :"Mesa (Bryce)",
                    :"Plateau",
                    :"Plateau M",
                    :"The Nether",
                    :"Ocean",
                    :"Deep Ocean",
                    :"Hills"
                ]
            },
            restrictions: {
                chance_of_multiple: 5,
                min: 1,
                max: 2,
                options: [
                    :"No axes",
                    :"No swords",
                    :"No hoes",
                    :"No fishing rods",
                    :"No shovels",
                    :"No beds",
                    :"No doors",
                    :"No trading",
                    :"No flint and steel",
                    :"No bows",
                    :"No bows or swords",
                    :"No enchanting",
                    :"No magic",
                    :"No animals",
                    :"No breeding",
                    :"No farming",
                    :"No farming potatos",
                    :"No farming carrots",
                    :"No farming melons",
                    :"No farming wheat",
                    :"No farming trees",
                    :"No diamond tools (excluding picks)",
                    :"No diamond tools",
                    :"No armour",
                    :"No splash potions",
                    :"Craft no tools above wood",
                    :"You cannot mine obsidian",
                    :"Your primary weapon is a bow",
                    :"Your primary weapon is a sword",
                    :"Your primary weapons are splash potions",
                    :"Your primary weapon is tnt",
                    :"No tools with unbreaking",
                    :"Your only weapons are bows",
                    :"Your only weapons are swords",
                    :"Your only weapons are splash potions",
                    :"Leather armour Only",
                    :"Iron armour Only",
                    :"Gold armour Only",
                    :"Diamond armour Only",
                    :"Boots only",
                    :"Pants only",
                    :"Chest armour Only",
                    :"Helmets Only",
                    :"Enchanted leather armour only",
                    :"Enchanted iron armour only",
                    :"Enchanted gold armour only",
                    :"Enchanted diamond armour only",
                    :"Enchanted armour only",
                    :"Enchanted weapons only",
                    :"Find and wear a jack o'lantern, never take it off",
                    :"No leather",
                    :"No iron",
                    :"No gold",
                    :"No diamonds",
                    :"No shears",
                    :"No buckets",
                    :"No potions",
                    :"No redstone",
                    :"No coal",
                    :"No lava",
                    :"Build only using dirt",
                    :"Build only using stone",
                    :"Build only using cobblestone",
                    :"Build only using wood",
                    :"Build only using obsidian",
                    :"Place only functional blocks",
                    :"Use only spruce wood",
                    :"Use only oak wood",
                    :"Use only dark oak wood",
                    :"Use only pine wood",
                    :"Use only jungle wood",
                    :"Use only spruce wood",
                    :"Use only birch wood",
                    :"No ladders",
                    :"No boats",
                    :"Cannot build with planks",
                    :"Cannot build with cobblestone",
                    :"Cannot build with wood",
                    :"Cannot build with stone",
                    :"Eat no meat or fish",
                    :"Your only food is meat or fish",
                    :"No health potions",
                    :"Minimize jumping",
                    :"All resources must be used as soon as possible",
                    :"Use no storage except your inventory",
                    :"Never have more than one of each tool at a time",
                    :"Never have more than one axe at a time",
                    :"Never have more than one sword at a time",
                    :"Never have more than one pickaxe at a time",
                    :"Play on hardcore",
                    :"You have one night above ground. As soon as night falls you must move everything underground, seal yourself off and never return",
                    :"All food must be grown above ground",
                    :"All food must be grown below ground",
                    :"You have one day to dig out the framework of your base, after that you may not dig or place any more non-functional blocks to change it",
                    :"Never retreat from enemies",
                    :"Only use weapons or armour from villages or chests",
                    :"Only use weapons or armour from villages",
                    :"Only use weapons or armour from chests",
                    :"Only use weapons from villages or chests",
                    :"Only use armour from villages or chests",
                    :"Only use weapons from villages",
                    :"Only use armour from villages",
                    :"Only use weapons from chests",
                    :"Only use armour from chests",
                    :"You may not travel above ground, tunnel everywhere",
                    :"Only 15 torches may exist in the world or your inventory at a time. If you find more, destroy them",
                    :"Only 15 torches may exist in the world or your inventory at a time. If you find more, leave them",
                    :"Only 30 torches may exist in the world or your inventory at a time. If you find more, destroy them",
                    :"Only 30 torches may exist in the world or your inventory at a time. If you find more, leave them",
                    :"Only 5 torches may exist in the world or your inventory at a time. If you find more, destroy them",
                    :"Only 5 torches may exist in the world or your inventory at a time. If you find more, leave them",
                    :"Only 2 torches may exist in the world or your inventory at a time. If you find more, destroy them",
                    :"Only 2 torches may exist in the world or your inventory at a time. If you find more, leave them",
                    :"Build everything out in the open. No walls. No doors. No building underground. No fences. Don't try and be clever",
                    :"Build no base, live in villages",
                    :"Do not kill Creepers",
                    :"Do not kill Skeletons",
                    :"Do not kill Zombies",
                    :"Do not kill Animals",
                    :"Do not kill Pigs",
                    :"Do not kill Cows",
                    :"Do not kill Spiders",
                    :"Whenever you die, destroy a diamond",
                    :"Do not retrieve your items on death",
                    :"No dogs",
                    :"No cats"
                ]
            },
            goals: {
                chance_of_multiple: 75,
                min: 1,
                max: 5,
                options: [
                    :"Fill a chest with Iron",
                    :"Fill a chest with Diamonds",
                    :"Fill a chest with Wood",
                    :"Fill a chest with Food",
                    :"Fill a chest with Meat",
                    :"Fill a chest with Fish",
                    :"Fill a chest with Bread",
                    :"Fill a chest with Eggs",
                    :"Fill a chest with Gold",
                    :"Fill a chest with Magic Books",
                    :"Fill a chest with Books",
                    :"Fill a chest with Coal",
                    :"Fill a chest with Lava buckets",
                    :"Create an artificial lake",
                    :"Create an artificial lake and build a base under its surface",
                    :"Create an artificial lake and build a base above its surface",
                    :"Collect one of every Tree",
                    :"Collect one of every Ore",
                    :"Collect one of every Block",
                    :"Collect one of every Animal",
                    :"Collect one of every Cat",
                    :"Collect one of every Horse",
                    :"Collect one of every Mob",
                    :"Collect one of every Wood",
                    :"Collect one of every Rock",
                    :"Learn to use Redstone",
                    :"Kill 5 golems",
                    :"Kill 10 Zombies",
                    :"Kill 10 Creepers",
                    :"Kill 10 Spiders",
                    :"Kill 10 Endermen",
                    :"Kill 10 Squid",
                    :"Kill 10 Villagers",
                    :"Kill 10 Zombie Pigmen",
                    :"Kill 10 Wolves",
                    :"Kill a Chicken Jockey",
                    :"Kill a Spider Jockey",
                    :"Kill 10 Blazes",
                    :"Kill 5 Endermites",
                    :"Kill 10 Ghasts",
                    :"Kill 10 Large Magma Cubes",
                    :"Kill 5 Silverfishs",
                    :"Kill 10 Skeletons",
                    :"Kill 10 Large Slimes",
                    :"Kill 5 Witchs",
                    :"Kill the Withers",
                    :"Kill 5 Zombie Villagers",
                    :"Kill the Killer Bunny",
                    :"Kill 5 Guardians",
                    :"Kill the Elder Guardian",
                    :"Kill the Ender Dragon",
                    :"Kill 5 Mooshroom Cows",
                    :"Renovate a Temple",
                    :"Renovate a Mineshaft",
                    :"Renovate a Nether Fortress",
                    :"Renovate an Ocean monument",
                    :"Build The Empire State Building",
                    :"Build The Golden Gate Bridge",
                    :"Build The Colosseum",
                    :"Build Big Ben",
                    :"Build The Brandenburg Gate",
                    :"Build The Chichen Itza",
                    :"Build Cristo Redentor",
                    :"Build The Eiffel Tower",
                    :"Build Himeji Castle",
                    :"Build Machu Picchu",
                    :"Build Notre Dame ",
                    :"Build The Pentagon",
                    :"Build The Sistine Chapel",
                    :"Build The Statue of Liberty",
                    :"Build Stonehenge",
                    :"Build The Sydney Opera House ",
                    :"Build The Taj Mahal",
                    :"Build The Colossus",
                    :"Build The Forbidden Palace",
                    :"Build The Great Wall of China",
                    :"Build The Hagia Sophia",
                    :"Build The Kremlin",
                    :"Build The Louvre",
                    :"Build An Oracle",
                    :"Build The Pyramids",
                    :"Build a Temple",
                    :"Build a Castle",
                    :"Build an Underground Base",
                    :"Build a Nuclear Bunker stocked with food to last for years",
                    :"Build an Underwater Base",
                    :"Build an Underwater Zoo stocked with one of every possible animal",
                    :"Build an Underwater Zoo stocked with one of every possible creature",
                    :"Build a Zoo Stocked with one of every possible creature",
                    :"Build a Zoo Stocked with one of every possible animal",
                    :"Build a working Redstone CPU",
                    :"Build a working train station linking several bases across multiple biomes",
                    :"Build a Steve Statue",
                    :"Build a Creeper Statue",
                    :"Build a Labyrinth",
                    :"Build a Large Farm",
                    :"Build a Sky Fortress that provides all the resources you require to Survive",
                    :"Build a Pirate Ship",
                    :"Build a Space Ship",
                    :"Build a Volcano",
                    :"Build a World Tree",
                    :"Build a Tree House",
                    :"Build an Elevator using Redstone",
                    :"Build an automated smelter",
                    :"Build an Item Smelter",
                    :"Build a town for 50 Villagers",
                    :"Build a wall for protection around a village",
                    :"Build an Iron Golem for a village",
                    :"Build a Mob spawner",
                    :"Build a Mob grinder",
                    :"Build your neighbourhood",
                    :"Build a national monument",
                    :"Build your real life house",
                    :"Build a tnt cannon",
                    :"Build The Titanic",
                    :"Build King's Landing",
                    :"Build Winterfell",
                    :"Build The Vatican",
                    :"Build The White House",
                    :"Build The British Houses of Parliament",
                    :"Beat the Ender Dragon on hardcore",
                    :"Reach the End in 10 days",
                    :"Reach the End and beat the Ender Dragon in 10 days",
                    :"Defeat the Ender Dragon and the Wither",
                    :"Clear out a Mineshaft",
                    :"Create these Biomes in minature: Desert, Tundra, Grasslands, Mountains, Jungle, Beach, Forest, Nether, Ocean",
                    :"Build a Nether Fortress in the regular world",
                    :"Create a new Village using Zombie Villagers",
                    :"Cure a Zombie Villager",
                    :"Breed 5 Villagers",
                    :"Breed 10 Cows",
                    :"Breed 10 Chickens",
                    :"Breed 10 Sheep",
                    :"Breed 10 Pigs",
                    :"Hatch 10 Chicken",
                    :"Create an automatic Egg Collector",
                    :"Farm every crop: Wheat, Melons, Pumpkins, Sugar Cane, Potatoes, Carrots, and Cocoa Beans",
                    :"Grow a giant mushroom",
                    :"Mine the Dragon Egg",
                    :"Discover 5 Dungeons",
                    :"Discover a Stronghold",
                    :"Create a Library",
                    :"Create a set of fully enchanted armour",
                    :"Create a set of fully enchanting diamond armour",
                    :"Write a book about your adventures",
                    :"Create pixel art of Megaman out of cloth blocks",
                    :"Create pixel art of Mario out of cloth blocks",
                    :"Create pixel art of Luigi out of cloth blocks",
                    :"Create pixel art of Samus out of cloth blocks",
                    :"Create pixel art of Kirby out of cloth blocks",
                    :"Create pixel art of Link out of cloth blocks",
                    :"Create pixel art of Pikachu out of cloth blocks",
                    :"Create pixel art of Goku out of cloth blocks",
                    :"Create pixel art of Vegeta out of cloth blocks",
                    :"Create pixel art of Squirtle out of cloth blocks",
                    :"Create pixel art of Charmander out of cloth blocks",
                    :"Create pixel art of Sonic out of cloth blocks"
                ]
            }
        }
    },
    dwarffortress: {
        title: 'Dwarf Fortress',
        background: 'dwarffortress.png',
        columns: {
            biome: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"Grassy/Forest",
                    :"Desert",
                    :"Glacier",
                    :"Mountainous",
                    :"Seaside",
                    :"River Junction",
                    :"Badlands",
                    :"Volcano",
                    :"Island",
                    :"Free-pick",
                    :"Near a tower"
                ]
            },
            surroundings: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"Calm",
                    :"Wilderness",
                    :"Untamed Wilds",
                    :"Serene",
                    :"Mirthful",
                    :"Joyous Wilds",
                    :"Sinister",
                    :"Haunted",
                    :"Terrifying",
                    :"Good",
                    :"Neutral",
                    :"Evil",
                    :"Peaceful",
                    :"Savage",
                    :"Free-pick"
                ]
            },
            challenges: {
                chance_of_multiple: 5,
                min: 1,
                max: 3,
                options: [
                    :"No danger rooms",
                    :"No traps",
                    :"No walls",
                    :"No bridges",
                    :"No Goblinite",
                    :"No Adamantine",
                    :"No Trading",
                    :"No Plump Helmets or Eggs",
                    :"No weapons (wrestlers only)",
                    :"Use only the starting 7 dwarves",
                    :"The only metal you are allowed to use is copper",
                    :"The only metal you are allowed to use is Iron",
                    :"The only metal you are allowed to use is Bronze",
                    :"You are only allowed to use Stone when no alternative exists",
                    :"No hospital",
                    :"No farming, obtain all food via trading",
                    :"No smithing, obtain all metal goods via trading",
                    :"No booze (slow mode)",
                    :"Embark with as many towers as possible",
                    :"Embark with an aquifer",
                    :"No soldiers, only war animals",
                    :"All men are soldiers",
                    :"You can only mine veins and up to 9 rock tiles per z-level",
                    :"No stairs, no walls, no doors, no bridges",
                    :"Your only food is meat, all armour must be bone",
                    :"Your only food is fish, all armour must be shell",
                    :"Your only food is meat",
                    :"Your only food is fish",
                    :"All resources must be used as soon as possible",
                    :"Everything but stockpiles must be above ground",
                    :"Perform a science experiment and share your results",
                    :"Maintain a 5:1 cat to dwarf ratio at all times. Extra dwarfs must be terminated with extreme prejudice.",
                    :"Start with only an anvil and 2 copper ore",
                    :"Start with 6 jesters and a single skilled dwarf",
                    :"Spend 0 points on embark",
                    :"You are only allowed to embark with at most 1 of each item",
                    :"Embark with a single pick",
                    :"All dwarves have all skills enabled",
                    :"If a single dwarf dies you must abandon the fort",
                    :"Choose an industry, you may only work that industry (I.E. Only metalworking, only crafting etc.)",
                    :"Metalworking only. No other industry",
                    :"Foodworking only. No other industry",
                    :"Brewing only. No other industry",
                    :"Cooking only. No other industry",
                    :"Crafting only. No other industry",
                    :"Woodworking only. No other industry",
                    :"Gemwork only. No other industry",
                    :"Clothmaking only. No other industry",
                    :"You have one season above ground. As soon as the seasons change you must move everything underground, seal yourself off and never return",
                    :"All food must be grown above ground",
                    :"All food must be gathered",
                    :"Do not dive below 2 z-levels. All buildings must be small hobbit holes",
                    :"No mechanisms",
                    :"No crossbows",
                    :"Embark near a tower. Construct no walls, gates, doors, or bridges",
                    :"All dwarves must serve in the military for at least 1 year and at most 3 years before retiring",
                    :"Enable no new labors. Dwarves can only ever work the jobs they came with",
                    :"You have one year to dig the framework of your fortress, after that you may not build any more constructions or dig any more tiles",
                    :"Only legendary miners may enter the main fort. Construct a training fort outside your main walls where immigrants train",
                    :"No lethal traps",
                    :"Kill all non-dwarf sentients",
                    :"All rooms are max 3x3",
                    :"No alcohol"
                ]
            },
            goals: {
                chance_of_multiple: 15,
                min: 1,
                max: 2,
                options: [
                    :"Kill all Elf and Human caravans",
                    :"Generate 25 million dorfbucks",
                    :"Make a vampire fort",
                    :"Make a were-fort",
                    :"Hermit Fortress (Only one dwarf)",
                    :"Go to Megaprojects page on the wiki and roll a d20",
                    :"Get two of as many animals as you can",
                    :"Make a massive above-ground town",
                    :"Keep the caverns open and reach Adamantine in the first year",
                    :"Using only your starting 7 and the first two migrant waves, reach 150 population",
                    :"Reach 150 population",
                    :"Reach 250 population",
                    :"Capture a forgotten beast",
                    :"Become the capital",
                    :"Bring lava to the surface",
                    :"Colonise a cavern layer",
                    :"Unleash hell",
                    :"Defeat hell",
                    :"Colonise hell",
                    :"Become a barony within 3 years",
                    :"Become a barony within 2 years",
                    :"Become the mountainhome within 5 years",
                    :"Train a dwarf to level 15 in every non social/military skill",
                    :"Build a Colosseum. Capture all invaders and have them fight your soldiers to the death",
                    :"Build a town",
                    :"Split your fortress into two underground societies within the first year, never allow them to mix",
                    :"Build your fort in the trees",
                    :"Build a large artificial lake with your fort underneath the surface",
                    :"Build an underwater fort",
                    :"Capture as many enemies as possible",
                    :"Build your fort in an ever growing tower, max width: 10x10",
                    :"Build a castle",
                    :"Create a device that will continually spew lava onto the surface forever",
                    :"Give all dwarves a regal version of every room",
                    :"Hook every dwarf's bedroom up to a magma trap. Anyone who becomes unhappy once their trap is hooked up is locked inside and burnt alive",
                    :"The world tree has died. Construct a new one. It must reach the maximum z-level and have a radius of at least 5 blocks. It can be hollow",
                    :"Immediately dig to the caverns and lock your dwarves in. Survive",
                    :"Dig exactly the amount of stone you need for each task, no more",
                    :"The initial 7 dwarves are prison guards. Lock all immigrants in their cells and keep them alive. After 10 years in their cell each dwarf can be released as a new guard. Native born dwarves become guards",
                    :"Build Venice. Your fort must be above ground with moats between buildings, you can travel between buildings via bridges",
                    :"Build a fort with a task based on the translation of it's randomised name",
                    :"Treat your nobles like nobility. As soon as the King declares his first stupid mandate, execute every noble in an interesting way",
                    :"Infect all your dwarves with vampirism",
                    :"Turn all your dwarves into werecreatures",
                    :"Capture and imprison all supernatural beings that enter your map",
                    :"Capture a necromancer in a cage, place him in a the middle of a Colosseum with sight of the surrounding area. Have your military fight enemies you have caught in cage traps in the Colosseum."
                ]
            }
        }
    },
    crusaderkings: {
        title: 'Crusader Kings 2',
        background: 'crusaderkings.jpg',
        columns: {
            starting_duchy: {
                title: 'Starting Duchy',
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'Afar',
                    :'Axum',
                    :'Berbera',
                    :'Damot',
                    :'Gojjam',
                    :'Gondar',
                    :'Semien',
                    :'Shewa',
                    :'Wag',
                    :'Alodia',
                    :'Blemmyia',
                    :'Makuria',
                    :'Nobatia',
                    :'Cyrenaica',
                    :'Kabylia',
                    :'Tripolitania',
                    :'Tunis',
                    :'Arabia',
                    :'Damman',
                    :'Medina',
                    :'Nefoud',
                    :'Oman',
                    :'Sanaa',
                    :'Alexandria',
                    :'Aswan',
                    :'Cairo',
                    :'Damietta',
                    :'Sinai',
                    :'Ascalon',
                    :'Galilee',
                    :'Jerusalem',
                    :'Oultrejourdain',
                    :'Alger',
                    :'Fes',
                    :'Mauretania',
                    :'Marrakech',
                    :'Tangier',
                    :'Tlemcen',
                    :'Aleppo',
                    :'Antioch',
                    :'Damascus',
                    :'Syria',
                    :'Tripoli',
                    :'Gauda',
                    :'Nadia',
                    :'Suhma',
                    :'Vanga',
                    :'Varendra',
                    :'Jharkand',
                    :'Kasi',
                    :'Magadha ',
                    :'Tirabhukti',
                    :'Dahala',
                    :'Ratanpur',
                    :'Kamarupanagara',
                    :'Para-Lauhitya',
                    :'Sutiya',
                    :'Daksina',
                    :'Dandakaranya',
                    :'Kalinga',
                    :'Tosali',
                    :'East Anglia',
                    :'Essex',
                    :'Hwicce',
                    :'Kent',
                    :'Lancaster',
                    :'Mercia',
                    :'Northumberland',
                    :'Wessex',
                    :'York',
                    :'Connacht',
                    :'Leinster',
                    :'Meath',
                    :'Munster',
                    :'Ulster',
                    :'Albany',
                    :'Galloway',
                    :'Lothian',
                    :'Man',
                    :'Moray',
                    :'The Isles',
                    :'Cornwall',
                    :'Deheubarth',
                    :'Gwynedd',
                    :'Powys',
                    :'Anatolia',
                    :'Armeniacon',
                    :'Charsianon',
                    :'Cilicia',
                    :'Paphlagonia',
                    :'Thracesia',
                    :'Trebizond',
                    :'Armenia',
                    :'Coloneia',
                    :'Edessa',
                    :'Mesopotamia',
                    :'Karvuna',
                    :'Moesia',
                    :'Vidin',
                    :'Bosnia',
                    :'Croatia',
                    :'Dalmatia',
                    :'Slavonia',
                    :'Abkhazia',
                    :'Derbent',
                    :'Kartli',
                    :'Achaia',
                    :'Adrianopolis',
                    :'Aegean',
                    :'Athens',
                    :'Cibyrrhaeot',
                    :'Cyprus',
                    :'Dyrrachion',
                    :'Epirus',
                    :'Krete',
                    :'Nikaea',
                    :'Samos',
                    :'Thessalonika',
                    :'Thrace',
                    :'Dioclea',
                    :'Rashka',
                    :'Apulia',
                    :'Benevento',
                    :'Calabria',
                    :'Capua',
                    :'Salerno',
                    :'Sicily',
                    :'Venice',
                    :'Esztergom',
                    :'Nyitra',
                    :'Pecs',
                    :'Pest',
                    :'Temes',
                    :'Transylvania',
                    :'Ungvar',
                    :'Moldau',
                    :'Wallachia',
                    :'Udayagiri',
                    :'Vengi',
                    :'Gangavadi',
                    :'Kalyani',
                    :'Nulambavadi',
                    :'Raichur Doab',
                    :'Lanka',
                    :'Sinhala',
                    :'Devagiri',
                    :'Konkana',
                    :'Nasikya',
                    :'Rattapadi',
                    :'Vidharba',
                    :'Chera Nadu',
                    :'Chola Nadu',
                    :'Pandya Nadu',
                    :'Tondai Nadu',
                    :'Racakonda',
                    :'Warangal',
                    :'Aquitaine',
                    :'Auvergne',
                    :'Bourbon',
                    :'Gascogne',
                    :'Poitou',
                    :'Toulouse',
                    :'Brittany',
                    :'Dauphiné',
                    :'Provence',
                    :'Savoy',
                    :'Upper',
                    :'Anjou',
                    :'Berry',
                    :'Burgundy',
                    :'Champagne',
                    :'Normandy',
                    :'Orleans',
                    :'Valois',
                    :'Badajoz',
                    :'Cordoba',
                    :'Granada',
                    :'Murcia',
                    :'Seville',
                    :'Toledo',
                    :'Aragon',
                    :'Barcelona',
                    :'Mallorca',
                    :'València',
                    :'Castille',
                    :'Galicia',
                    :'Asturias',
                    :'León',
                    :'Navarra',
                    :'Algarve',
                    :'Beja',
                    :'Portucale',
                    :'Austria',
                    :'Bavaria',
                    :'Carinthia',
                    :'Tyrol',
                    :'Bohemia',
                    :'Moravia',
                    :'Brabant',
                    :'Flanders',
                    :'Gelre',
                    :'Holland',
                    :'Baden',
                    :'Brandenburg',
                    :'Brunswick',
                    :'Franconia',
                    :'Köln',
                    :'Meissen',
                    :'Saxony',
                    :'Swabia',
                    :'Thüringia',
                    :'Alsace',
                    :'Lower',
                    :'Luxembourg',
                    :'Upper Lorraine',
                    :'Ancona',
                    :'Ferrara',
                    :'Genoa',
                    :'Latium',
                    :'Lombardy',
                    :'Modena',
                    :'Pisa',
                    :'Sardinia',
                    :'Spoleto',
                    :'Susa',
                    :'Tuscany',
                    :'Verona',
                    :'Ghana',
                    :'Mali',
                    :'Songhay',
                    :'Timbuktu',
                    :'Kabulistan',
                    :'Zabulistan',
                    :'Baluchistan',
                    :'Sistan',
                    :'Dihistan',
                    :'Khiva',
                    :'Merv',
                    :'Samarkand',
                    :'Baghdad',
                    :'Basra',
                    :'Jazira',
                    :'Kermanshah',
                    :'Mosul',
                    :'Tigris',
                    :'Azerbaijan',
                    :'Esfahan',
                    :'Fars',
                    :'Hamadan',
                    :'Kerman',
                    :'Khorasan',
                    :'Tabaristan',
                    :'Tabriz',
                    :'Haritanaka',
                    :'Kuru',
                    :'Mathura',
                    :'Vodamayutja',
                    :'Anartta',
                    :'Gurjara',
                    :'Lata',
                    :'Saurashtra',
                    :'Jejakabhukti',
                    :'Kanyakubja',
                    :'Saryupara',
                    :'Akara-Dasarna',
                    :'Anupa',
                    :'Avanti ',
                    :'Gandhara',
                    :'Lahore',
                    :'Multan',
                    :'Ajmer',
                    :'Jangladesh',
                    :'Maru',
                    :'Medapata',
                    :'Stravani',
                    :'Bhakkar',
                    :'Sauvira',
                    :'Bjarmia',
                    :'Perm',
                    :'Ugra',
                    :'Yugra',
                    :'Belo Ozero',
                    :'Moskva',
                    :'Novgorod',
                    :'Pskov',
                    :'Rostov',
                    :'Tver',
                    :'Vladimir',
                    :'Yaroslavl',
                    :'Bryansk',
                    :'Chernigov',
                    :'Galich',
                    :'Kiev',
                    :'Pereyaslavl',
                    :'Ryazan',
                    :'Smolensk',
                    :'Turov',
                    :'Vitebsk',
                    :'Volhynia',
                    :'Holstein',
                    :'Jylland',
                    :'Sjælland',
                    :'Skåne',
                    :'Estonia',
                    :'Finland',
                    :'Karelia',
                    :'Kola',
                    :'Iceland',
                    :'Jämtland',
                    :'Orkney',
                    :'Ostlandet',
                    :'Trøndelag',
                    :'Vestlandet',
                    :'Bergslagen',
                    :'Norrland',
                    :'Småland',
                    :'Uppland',
                    :'Västergötland',
                    :'Östergötland ',
                    :'Alania',
                    :'Azov',
                    :'Itil',
                    :'Kimak',
                    :'Kipchak',
                    :'Kirghiz',
                    :'Sarkel',
                    :'Sibir',
                    :'Yaik',
                    :'Cherson',
                    :'Crimea',
                    :'Syr Darya',
                    :'Turkestan',
                    :'Zhetysu',
                    :'Bolghar',
                    :'Cheremisa',
                    :'Mari',
                    :'Mordva',
                    :'Courland',
                    :'Lithuania',
                    :'Livonia',
                    :'Polotsk',
                    :'Prussia',
                    :'Samogitia',
                    :'Yatvingia',
                    :'Greater',
                    :'Kuyavia',
                    :'Lesser',
                    :'Mazovia',
                    :'Silesia',
                    :'Mecklenburg',
                    :'Pomeralia',
                    :'Pomerania'
                ]
            },
            restrictions: {
                chance_of_multiple: 5,
                min: 1,
                max: 3,
                options: [
                    :'No usurping',
                    :"Do not use the 'Expell the Jewry' decision",
                    :'Only marry lowborn',
                    :'Never rebel against your liege',
                    :'Always be honorable towards your family',
                    :'Always be honorable towards your fellow vassals',
                    :'Do not use factions',
                    :'Always lead your army into battle',
                    :'Always honor your alliances and actually help',
                    :'Do not use mercenaries or holy orders',
                    :'Ironman mode',
                    :'Do your best to always play as a female',
                    :'Always say yes when offered the chance to become a heretic',
                    :'Always say yes when a vassal demands you transfer a vassal or de jure territory to them',
                    :'Always say yes when your family requests a fief',
                    :'Never honor alliances',
                    :'Whenever a great holy war is called involving your religion, side with the enemy by declaring war on someone of your religion who is involved',
                    :'Always say yes to culture conversions',
                    :'As an emperor never hold more than one kingdom',
                    :'As a king never hold more than one duchy',
                    :'As a king have no duke level vassals unless it would put you over the vassal limit',
                    :'No demanding religious conversion',
                    :'Always say yes to faction demands',
                    :'Always have a vassal educate your child',
                    :'Always say yes to marriage requests',
                    :'Always marry within your dynasty if possible',
                    :'Never declare war against someone of your own religion',
                    :'Never use holy wars',
                    :'Never declare war on a claim below duchy level',
                    :'Never declare war on a claim below kingdom level',
                    :'Never sow dissent',
                    :'Never improve religious relations',
                    :'Never improve diplomatic relations',
                    :'Never scheme',
                    :'Never proselityze',
                    :'No Retinues',
                    :'Try to reach and maintain absolute crown authority',
                    :'Try to reach and maintain autonomous vassals',
                    :'Keep centralisation to a minimum',
                    :'Keep centralisation as high as possible',
                    :'Raise taxes as high as you can',
                    :'Raise levies law as high as you can',
                    :'Lower taxes as low as you can',
                    :'Lower levies law as low as you can',
                    :'Never retract titles',
                    :'Never retract vassals',
                    :'Never use the imprison action',
                    :'Never release prisoners',
                    :'Execute all prisoners',
                    :'Release all prisoners',
                    :'Always kill yourself when you become depressed',
                    :'Throw a tournament every year',
                    :'Throw a feast every year',
                    :'Never surrender before -100% warscore',
                    :'Never end a war before 100% or -100% warscore',
                    :'Always have a plot',
                    :'Always be a member of a faction',
                    :'Never out a cheating spouse',
                    :'Always out a cheating spouse',
                    :'Always cheat on your spouse',
                    :'Play on full speed',
                    :"Don't pause",
                    :"Play on full speed, and don't pause",
                    :'Always marry below your rank',
                    :'Always marry a ruler',
                    :'Always marry your children to lowborn',
                    :'Minimize your alliances',
                    :'Whenever your spouse cheats, befriend their lover',
                    :"Whenever your spouse cheats, seduce their lover's spouse",
                    :"Whenever your spouse cheats, get a divorce",
                    :'Always have an antipope'
                ]
            },
            goals: {
                chance_of_multiple: 75,
                min: 1,
                max: 5,
                options: [
                    {
                        target_religion: {
                            title: 'Target Religion',
                            option_title: 'Convert to the Target Religion',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'Catholic',
                                :'Orthodox',
                                :'Miaphysite',
                                :'Nestorian',
                                :'Sunni',
                                :'Shia',
                                :'Ibadi',
                                :'Judaism',
                                :'Zoroastrian',
                                :'Hinduism',
                                :'Buddhism',
                                :'Jainism',
                                :'Germanic',
                                :'Reformed Germanic',
                                :'Reformed Slavic',
                                :'Tengri',
                                :'Reformed Tengri',
                                :'Reformed Romuva',
                                :'Suomenusko',
                                :'Reformed Suomenusko',
                                :'West African ',
                                :'Reformed West African',
                                :'Aztec',
                                :'Reformed Aztec',
                                :'Zunist',
                                :'Reformed Zunist',
                                :'Cathar',
                                :'Fraticelli',
                                :'Waldensian',
                                :'Lollard',
                                :'Monophysite',
                                :'Messalian ',
                                :'Bogomilist',
                                :'Monothelite',
                                :'Iconoclast',
                                :'Paulician',
                                :'Zikri',
                                :'Yazidi',
                                :'Druze',
                                :'Hurufi',
                                :'Mazdaki',
                                :'Samaritan',
                                :'Karaite',
                                :'Old Germanic',
                                :'Old Slavic',
                                :'Old Tengri',
                                :'Old Romuva',
                                :'Old Suomenusko',
                                :'Old West African',
                                :'Old Aztec',
                                :'Old Zunist'
                            ]
                        }
                    },
                    {
                        target_empire: {
                            title: 'Target Empire',
                            option_title: 'Own the Target Empire without starting in it',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'The Germanian Empire',
                                :'The Byzantine Empire',
                                :'The Italia Empire',
                                :'The Scandinavia Empire',
                                :'The Wendish Empire',
                                :'The Russian Empire',
                                :'The Tartarian Empire',
                                :'The Persian Empire',
                                :'The Carpathian Empire',
                                :'The Francia Empire',
                                :'The Hispania Empire',
                                :'The Arabian Empire',
                                :'The Britannia Empire',
                                :'The Mali Empire',
                                :'The Bengal Empire',
                                :'The Deccan Empire',
                                :'The Roman Empire',
                                :'The Latin Empire',
                                :'The Indian Empire'
                            ]
                        }
                    },
                    {
                        target_empire: {
                            title: 'Target Empire',
                            option_title: 'Own the Target Empire',
                            chance_of_multiple: 0,
                            min: 1,
                            max: 1,
                            options: [
                                :'The Germanian Empire',
                                :'The Byzantine Empire',
                                :'The Italia Empire',
                                :'The Scandinavia Empire',
                                :'The Wendish Empire',
                                :'The Russian Empire',
                                :'The Tartarian Empire',
                                :'The Persian Empire',
                                :'The Carpathian Empire',
                                :'The Francia Empire',
                                :'The Hispania Empire',
                                :'The Arabian Empire',
                                :'The Britannia Empire',
                                :'The Mali Empire',
                                :'The Bengal Empire',
                                :'The Deccan Empire',
                                :'The Roman Empire',
                                :'The Latin Empire',
                                :'The Indian Empire'
                            ]
                        }
                    },
                    :'Kill the white stag',
                    :'Own every Kingdom that is a part of the Brittania Empire',
                    :'Reform a Pagan Religion',
                    :'Work your way up from count to emperor',
                    :'Set up an antipope',
                    :'Sire a child with the inbred trait',
                    :'As an Orthodox Christian hold Rome, Constantinople, Alexandria, Antioch, and Jerusalem',
                    :'Be the highest contributor in a successful crusade for the Kingdom of Jerusalem',
                    :'Successfully defend from a great holy war',
                    :'Successfully defend from a holy war',
                    :'As a ruler of non-india culture hold a King or Emperor title in India',
                    :'Convert an entire religion to a heresy',
                    :'Form the Roman Empire',
                    :'Form the Holy Roman Empire',
                    :'Become the Saoshyant',
                    :'Have the genius trait',
                    :'Have the quick trait',
                    :'Have the strong trait',
                    :'Have the attractive trait',
                    :'Convert Mecca to Hinduism, Jainism, or Buddhism',
                    :'Acquire the Necronomicon',
                    :'Have Robin Hood in your court',
                    :'Become Samrat Chakravartin',
                    :'Own the Francia, Germania, and Iberian Empires as a reformed pagan',
                    :'Own one of the Francia, Germania, and Iberian Empires as an unreformed pagan',
                    :'Own Rome as a pagan',
                    :'Own Rome and Constantinople as a pagan',
                    :'Own Rome as a Muslim',
                    :'Conquer an opposing religions holy sites',
                    :'Destroy the holy roman empire, in a start where it already exists',
                    :'Destroy the Byzantine Empire',
                    :"Form the Latin Empire and hold all of the Byzantine Empire's territory",
                    :'Own Rome as a Miaphysite christian',
                    :'Own Constantinople as a Miaphysite christian',
                    :'Own Rome and Constantinople as a Miaphysite christian',
                    :'Restore the borders of the Roman Empire',
                    :'Convert Rome and Constantinople to any Indian Religion',
                    :'Convert Rome and Constantinople to any one non-christian Religion',
                    :'Convert all Christian Provinces to any non-Christian religions',
                    :'Convert all Islamic Provinces to any non-Islamic religions',
                    :'Convert all Hindu, Jainist, or Buddhist Provinces to any non-Hindu, non-Jainist, or non-Buddhist religions',
                    :'Convert all Pagan Provinces to any non-Pagan religions',
                    :'Convert all Zoroastrian Provinces to any non-Zoroastrian religions',
                    :'Have 7 friends',
                    :'Have 5 lovers',
                    :'Contract Syphillis',
                    :'Contract the Great Pox',
                    :'Legitimise and then play as a bastard',
                    :'Wipe out the Karling Family',
                    :'Wipe out the Godwinson Family',
                    :'Install an Antipope in Rome',
                    :'Install an Antipope in Rome, and then replace him with another Antipope',
                    :'Put a heretical pope in Rome',
                    :'Have five heretic pentarchs',
                    :'As a heretic, defend against a holy war from your parent religion',
                    :'As a heretic, defend against a great holy war from your parent religion',
                    :'Have 30 diplomacy',
                    :'Have 30 martial',
                    :'Have 30 stewardship',
                    :'Have 30 intrigue',
                    :'Have 30 learning',
                    :'Forge a claim on another title, and then take it',
                    :'Usurp an empire',
                    :'Forge a claim on another title, and then inherit it on the same character',
                    :'Go to war for a title you were going to inherit anyway',
                    :'Defend against an adventurer',
                    :'Have a holy order as your vassal',
                    :'Give a holy order a kingdom',
                    :'Give a holy order a duchy',
                    :'As an emperor, have a kingdom level merchant republic as your vassal',
                    :'As an emperor, have a kingdom level theocracy as your vassal',
                    :'Create a faction and succesfully implement its goal',
                    :'Create a faction and succesfully gain independence',
                    :'Create a faction and succesfully put someone on the throne',
                    :'Create a faction and succesfully change succession law',
                    :'Create a faction and succesfully lower crown authority',
                    :'Create a faction and succesfully put yourself on the throne',
                    :'Create a faction and succesfully put your child on the throne',
                    :'Create a faction and succesfully put your friend on the throne',
                    :'Create a faction and succesfully put your lover on the throne',
                    :'Create a faction and succesfully put your spouse on the throne',
                    :'Create a faction, push your claim, and fail horribly',
                    :'Die in a great holy war',
                    :'Die in war',
                    :'Become a crusader',
                    :'Become a Mujahid',
                    :'Go on a pilgramige',
                    :'Go on a Hajj',
                    :'As a non-Islamic character, bring Sayyid into your family tree',
                    :'As a non-Islamic character, bring Mirza into your family tree',
                    :'Become decedant',
                    :'Have an Unworthy Court Chaplain',
                    :'Become a Kinslayer',
                    :'Be born in the purple',
                    :'Go into hiding',
                    :'Come out of hiding after killing the person who tried to kill you',
                    :'Have all 7 Deadly Sins',
                    :'Have all 7 Heavenly Virtues',
                    :'Be a Falconer',
                    :'Be a Poet',
                    :'Become a Socializer',
                    :'Become a Game Master',
                    :'Become a Hedonist',
                    :'Become a Duelist',
                    :'Become a Hunter',
                    :'Become a Strategist',
                    :'Become a Administrator',
                    :'Become a Architect',
                    :'Become a Gardener',
                    :'Become a Master Schemer',
                    :'Become an Impaler',
                    :'Become a Master Seducer',
                    :'Become Celibate',
                    :'Become a Master Seductress',
                    :'Become a Scholar',
                    :'Become a Theologian',
                    :'Become a Mystic',
                    :'Become scarred',
                    :'Become a lunatic and speak to god',
                    :'Become an Elusive Shadow',
                    :'Become a Grey Eminence',
                    :'Become Midas Touched',
                    :'Become a Brilliant Strategist',
                    :'Become a Mastermind Theologian',
                    :'Take a title in a holy war and then convert to the opposing religion',
                    :"Take a title in a holy war and convert the title's de jure provinces to your religion",
                    :'Be excommunicated',
                    :'Pay the pope to forgive your sins',
                    :'Win a war against an enemy twice your size whilst independent',
                    :'Win a war against an enemy with the help of two allies',
                    :'Conquer an ally',
                    :'Become friends with your liege',
                    :'Become the lover of your liege',
                    :'Raise someone of lowborn birth to the throne of a kingdom',
                    :'Seduce a bishop',
                    :'Seduce a prince-bishop',
                    :'Seduce a king-bishop',
                    :'Play as the seventh child',
                    :'Play as the seventh child of a seventh child',
                    :'Assassinate your wife',
                    :'Assassinate your father',
                    :'Assassinate your mother',
                    :'Assassinate your brother',
                    :'Assassinate your liege',
                    :'Assassinate a vassal',
                    :'Assassinate a religious head',
                    :'Assassinate someone of no importance',
                    :'Befriend your liege, and then assassinate him',
                    :"Become your liege's lover, and then assassinate him",
                    :'Assassinate someone planning an adventurer into your territory',
                    :"Defend against your liege's tyranny",
                    :'Defeat a vassal as they attempt to defend against your tyranny',
                    :'Defend against a rebellion',
                    :'Have your liege be both your friend and your lover',
                    :"Become your liege's enemy",
                    :'Defeat your liege in a duel',
                    :'Be in a homosexual relationship',
                    :'Have a dog',
                    :'Survive depression',
                    :'Live to 90',
                    :'Play a full game',
                    :'Convert to Aztec',
                    :'Convert the de jure provinces of a European Empire to Aztec',
                    :'Own Rome as an Aztec',
                    :'Own Constantinople as an Aztec',
                    :'Own a province in India as an Aztec',
                    :'Sacrifice the pope as a pagan or Kali worshipper',
                    :'Sacrifice a king as a pagan or Kali worshipper',
                    :'Sacrifice an emperor as a pagan or Kali worshipper'
                ]
            },
        }
    },
    falloutnewvegas: {
        title: 'Fallout: New Vegas',
        background: 'newvegas.jpg',
        columns: {
            special: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: new_vegas_specials()
            },
            tag_skills: {
                chance_of_multiple: 100,
                min: 3,
                max: 3,
                options: [
                    :"Barter",
                    :"Lockpick",
                    :"Medicine",
                    :"Repair",
                    :"Science",
                    :"Sneak",
                    :"Speech",
                    :"Survival",
                    :'Appropriate for your primary weapon'
                ]
            },
            traits: {
                chance_of_multiple: 100,
                min: 2,
                max: 2,
                options: [
                    :"Built to Destroy",
                    :"Fast Shot",
                    :"Four Eyes",
                    :"Good Natured ",
                    :"Heavy Handed",
                    :"Kamikaze",
                    :"Loose Cannon",
                    :"Small Frame",
                    :"Trigger Discipline",
                    :"Wild Wasteland",
                    :"Claustrophobia",
                    :"Early Bird",
                    :"Hoarder",
                    :"Hot Blooded",
                    :"Logan's Loophole",
                    :"Skilled"
                ]
            },
            hardcore_mode: {
                title: 'Hardcore Mode',
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :'On',
                    :'On',
                    :'Off',
                    :'Off',
                    :'Off',
                    :'Off'
                ]
            },
            primary_weapon: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"Energy: Pistols",
                    :"Energy: Rifles",
                    :"Energy: Heavy",
                    :"Explosives",
                    :"Melee: Bladed",
                    :"Melee: Blunt",
                    :"Melee: Thrown",
                    :"Guns: Pistols",
                    :"Guns: Shotguns",
                    :"Guns: SMGs",
                    :"Guns: Rifles",
                    :"Guns: Heavy",
                    :"Unarmed: Knuckles/Gauntlet/Gloves/Power Fists",
                    :"Unarmed: Bare Fists",
                    :"Pacifist"
                ]
            },
            faction: {
                spoiler: true,
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"NCR",
                    :"Caesar's Legion",
                    :"House",
                    :"Yes Man"
                ]
            },
            human_companion: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"None",
                    :"Arcade",
                    :"Boone",
                    :"Lily",
                    :"Raul",
                    :"Cass",
                    :"Veronica"
                ]
            },
            other_companion: {
                chance_of_multiple: 0,
                min: 1,
                max: 1,
                options: [
                    :"None",
                    :'ED-E',
                    :'Rex',
                    :'ED-E',
                    :'Rex',
                    :'ED-E',
                    :'Rex'
                ]
            }
        }
    }
}