GAMES[:the_witcher] = {
    title: 'The Witcher',
    page_title: 'Playthrough Generator for The Witcher',
    save_button_message: 'Save playthrough',
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
}