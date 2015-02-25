#Scenario Generator

Pretty simple. Install the gems. Run the server. Visit the domain.

Currently supported games:
* Baldur's Gate
* Dark Souls
* Europa Universalis IV
* Mass Effect
* Mass Effect 2
* Mass Effect 3
* Kerbal Space Program
* The Witcher
* The Witcher 2
* Civilization V
* Skyrim
* Minecraft
* Dwarf Fortress
* Crusader Kings 2
* Fallout: New Vegas
* X-Rebirth
* X-Com: Enemy Unknown + Enemy Within

You can add to the generator source list in config/initializers/constants.rb
Just add to the hash in the correct format and give it a background at assets/images/<game_name>.png and it will automatically appear in the index and the generator will work.

Pull requests will be vetted for spelling and grammar. Feel free to correct me if I've messed either up.
Please remember to increment the counter in the readme.