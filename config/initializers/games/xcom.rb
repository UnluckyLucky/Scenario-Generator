GAMES[:xcom] = {
    buy_link: 'http://www.amazon.co.uk/gp/product/B008IYCVK2/ref=as_li_tl?ie=UTF8&camp=1634&creative=19450&creativeASIN=B008IYCVK2&linkCode=as2&tag=scen-gen-21&linkId=PEXMH5LQWPS2I2YX',
    title: 'X-Com: Enemy Unknown',
    generator_title: 'Challenge',
    background: 'xcom.jpg',
    columns: {
        difficulty: {
            chance_of_multiple: 0,
            min: 1,
            max: 1,
            options: [
                :'Normal',
                :'Normal',
                :'Normal',
                :'Normal',
                :'Classic',
                :'Classic',
                :'Impossible',
                :'Ironman Normal',
                :'Ironman Normal',
                :'Ironman Normal',
                :'Ironman Normal',
                :'Ironman Classic',
                :'Ironman Classic',
                :'Ironman Impossible'
            ]
        },
        second_wave_options: {
            help: 'Ignore any options you have not unlocked. If you get an Enemy Within option and you do not own Enemy Within, go buy it because it is awesome.',
            chance_of_multiple: 75,
            min: 0,
            max: 8,
            options: [
                :'Damage Roulette',
                :'New Economy',
                :'Not Created Equally',
                :'Hidden Potential',
                :'Red Fog',
                :'Absolutely Critical',
                :'The Greater Good',
                :'Marathon',
                :'Results Driven',
                :'High Stakes',
                :'Diminishing Returns',
                :'More Than Human',
                :'War Weariness',
                :'E-115',
                :'Total Loss',
                :'Alternate Sources',
                :'Aiming Angles',
                :'Save Scum',
                :'Training Roulette',
                :'Mind Hates Matter',
                :'Itchy Trigger Tentacle'
            ]
        },
        ideal_squad: {
            help: "Bring rookies if you don't have the classes required",
            chance_of_multiple: 0,
            min: 6,
            max: 6,
            options: [
                [
                    :Assault,
                    :Heavy,
                    :Support,
                    :Sniper
                ],
                [
                    :Assault,
                    :Heavy,
                    :Support,
                    :Sniper
                ],
                [
                    :Assault,
                    :Heavy,
                    :Support,
                    :Sniper
                ],
                [
                    :Assault,
                    :Heavy,
                    :Support,
                    :Sniper
                ],
                [
                    :Assault,
                    :Heavy,
                    :Support,
                    :Sniper
                ],
                [
                    :Assault,
                    :Heavy,
                    :Support,
                    :Sniper
                ]
            ]
        },
        starting_country: {
            chance_of_multiple: 35,
            min: 1,
            max: 1,
            options: [
                :'Africa',
                :'Asia',
                :'Europe',
                :'North America',
                :'South America'
            ]
        }
    }
}