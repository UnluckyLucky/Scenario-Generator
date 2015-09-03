def specials
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

GAMES[:fallout3] = {
    buy_link: 'http://www.greenmangaming.com/s/gb/en/pc/games/rpgs/fallout-3-game-year-edition/',
    site: 'gmg',
    title: 'Fallout 3',
    generator_title: 'Character',
    background: 'fallout3.jpg',
    added: Date.strptime('20150404',"%Y%m%d"),
    last_updated: Date.strptime('20150404',"%Y%m%d"),
    columns: {
        special: {
            chance_of_multiple: 0,
            min: 1,
            max: 1,
            options: specials
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
                :'Appropriate for your primary weapon'
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
                :"Unarmed: Bare Fists"
            ]
        },
        human_companion: {
            chance_of_multiple: 0,
            min: 1,
            max: 1,
            options: [
                :"Star Paladin Cross",
                :"Butch DeLoria",
                :"Clover",
                :"Sergeant RL-3",
                :"Jericho",
                :"Fawkes",
                :"Charon"
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
        },
        :"Megaton" => {
            spoiler: true,
            chance_of_multiple: 0,
            min: 1,
            max: 1,
            options: [
                :"Blow it up",
                :"Do not blow it up",
            ]
        },
        :"The FEV vial" => {
            spoiler: true,
            chance_of_multiple: 0,
            min: 1,
            max: 1,
            options: [
                :"Insert the FEV vial",
                :"Do not insert the FEV vial",
            ]
        }
    }
}