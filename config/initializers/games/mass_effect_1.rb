GAMES[:mass_effect] = {
    buy_link: 'http://www.amazon.co.uk/gp/product/B009WMVCGS/ref=as_li_tl?ie=UTF8&camp=1634&creative=19450&creativeASIN=B009WMVCGS&linkCode=as2&tag=scen-gen-21&linkId=TES4R2XYCXZ6LYJY',
    title: 'Mass Effect',
    generator_title: 'Playthrough',
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
            help: 'General reaction in conversations, does not overrule story options from below',
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
                        spoiler: true,
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
                        spoiler: true,
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
        virmire: {
            spoiler: true,
            chance_of_multiple: 0,
            min: 1,
            max: 1,
            options: [
                :'Ashley is left behind',
                :'Kaidan is left behind'
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
}