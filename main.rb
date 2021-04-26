#  turns, addition question (pick number between 1-20, 
#  answer correct or lose a life. 3 life start.
# update score at turn end. Done when one player wins. announce winner)

# Classes: Player: lives, name, 
# Classes: General: whose turn, Ask question func

require './player'
require './gameplay'


cole = Player.new('Cole')
joel = Player.new('Joel')

# puts cole.name
# puts joel.name

start = Gameplay.new(cole, joel)

start.start(cole, joel)