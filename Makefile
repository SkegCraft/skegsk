FILE=$(shell echo ~/Skegcraft2/plugins/Skript/scripts/main.sk)

all: $(FILE) sc
$(FILE): $(wildcard *.sk)
	skib main.sk $(FILE)

sc:
	screen -S skegcraft -X skript "skript reload main\ntell petabyt Skript Reloaded\n"

.PHONY: all sc
