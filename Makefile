# gpp -D BACKUP main.sk > output.sk

FILE=$(shell echo ~/Skegcraft2/plugins/Skript/scripts/main.sk)

all: $(FILE) sc
$(FILE): $(wildcard *.sk)
	gpp main.sk > $(FILE)

.PHONY: $(FILE)

sc:
	screen -S skegcraft -X stuff "skript reload main\nsay Skript Reloaded\n"

.PHONY: all sc
