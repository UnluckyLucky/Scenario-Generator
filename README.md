#Scenario Generator

Pretty simple. Install the gems. Run the server. Visit the domain.

Currently supported games:
* Age of Empires 2
* Age of Mythology
* Baldur's Gate
* Civilization V
* Dark Souls
* Dungeons of Dredmor
* Dwarf Fortress
* Endless Legend
* Europa Universalis IV
* Fallout: New Vegas
* Kerbal Space Program
* Mass Effect
* Mass Effect 2
* Mass Effect 3
* Minecraft
* Pokemon
* Skyrim
* Tales of Maj'eyal
* Team Fortress 2
* The Witcher
* The Witcher 2
* X-Com: Enemy Unknown + Enemy Within
* X-Rebirth

You can add to the generator source list in config/initializers/constants.rb
Just add to the hash in the correct format and give it a background at assets/images/<game_name>.png and it will automatically appear in the index and the generator will work.

Pull requests will be vetted for spelling and grammar. Feel free to correct me if I've messed either up.
Please remember to increment the counter in the readme.