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

GAMES[:falloutnewvegas] = {
    title: 'Fallout: New Vegas',
    page_title: 'Character Generator for Fallout: New Vegas',
    save_button_message: 'Save character',
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
}