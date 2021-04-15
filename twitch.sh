# screen -S "T" -X quit
# screen -dmUS "T"
# screen -S "T" -X stuff "cd PATH/to/TwitchDropGrabber"
screen -S "T" -X stuff "^C"
screen -S "T" -X stuff "npm start -- -f \"game.txt\" -g \"Tom Clancy's Rainbow Six Siege\""
screen -S "T" -X stuff "\n"
