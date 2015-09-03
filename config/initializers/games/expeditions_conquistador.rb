followers_array = [
    :Doctor,
    :Scout,
    :Soldier,
    :Hunter,
    :Scholar
] * 5

# TODO: Make this generic so it can do an arbitrary number of stats,
# it's used here and for Fallout 3 and NV. 3 places justifies turning it into a
# general helper function.
def expeditions_stats
    options = []
    total = 38
    (1..10).each do |t|
        (1..10).each do |d|
            (1..10).each do |h|
                next if t + d + h + 30 < total
                break if t + d + h + + 3 > total
                (1..10).each do |su|
                    next if t + d + h + su + 20 < total
                    break if t + d + h + su + 2 > total
                    (1..10).each do |sc|
                        next if t + d + h + su + sc + 10 < total
                        break if t + d + h + su + sc + 1 > total
                        (1..10).each do |le|
                            if t + d + h + su + sc+ le == total
                                string = "#{t} #{d} #{h} #{su} #{sc} #{le}"
                                options.append string
                            end
                        end
                    end
                end
            end
        end
    end

    return options
end

GAMES[:expeditions_conquistador] = {
    buy_link: 'http://www.greenmangaming.com/s/gb/en/pc/games/indie/expeditions-conquistador/',
    site: 'gmg',
    title: 'Expeditions: Conquistador',
    generator_title: 'Scenario',
    background: 'expeditions_conquistador.jpg',
    added: Date.strptime('20150420',"%Y%m%d"),
    last_updated: Date.strptime('20150420',"%Y%m%d"),
    columns: {
        difficulty: {
            options: [
                :Ironman,
                :Normal
            ]
        },
        stats: {
            options: expeditions_stats
        },
        attitude_towards_natives: {
            help: "Whilst mostly self-explanatory, the interpretation of this is up to you",
            options: [
                :Hostile,
                :Passive,
                :Accepting,
                :Cautious,
                :Rude,
                :"Reasonable when they have something to offer",
                :"Reasonable",
                :"Unreasonable",
                :Harsh,
                :Pious
            ]
        },
        attitude_towards_europeans: {
            help: "Whilst mostly self-explanatory, the interpretation of this is up to you",
            options: [
                :Hostile,
                :Passive,
                :Friendly,
                :Cautious,
                :Rude,
                :"Reasonable",
                :"Unreasonable"
            ]
        },
        attitude_towards_followers: {
            help: "Whilst mostly self-explanatory, the interpretation of this is up to you",
            options: [
                :Harsh,
                :Fair,
                :"Cruel but fair",
                :Friendly,
                :Reasonable,
                :Unreasonable,
                :Just,
                :Pushover
            ]
        },
        starting_followers: {
            min: 10,
            options: followers_array
        }
    }
}