PREFIX = ${HOME}/.local
CONF = ${HOME}/.config
GITSITE = "https://github.com/maneater2"
ROOTCOMMAND = $(shell command -v sudo || command -v doas)

all: configs scripts dwm 

configs:
	mkdir -p ${CONF}
	cp -r .config/* ${CONF}/

scripts:
	mkdir -p ${PREFIX}/bin/
	cp -r .local/bin/* ${PREFIX}/bin/

dwm:
	[ -d src/dwm ] && cd src/dwm && git pull || git clone ${GITSITE}/dwm src/dwm
	[ -d src/dwmblocks ] && cd src/dwmblocks && git pull || git clone ${GITSITE}/dwmblocks src/dwmblocks
	[ -d src/st ] && cd src/st && git pull || git clone ${GITSITE}/st src/st
	[ -d src/dmenu ] && cd src/dmenu && git pull || git clone ${GITSITE}/dmenu src/dmenu
	cd src/dwm && make && ${ROOTCOMMAND} make install
	cd src/dwmblocks && make && ${ROOTCOMMAND} make install
	cd src/st && make && ${ROOTCOMMAND} make install
	cd src/dmenu && make && ${ROOTCOMMAND} make install
