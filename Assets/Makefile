IMAGES = kairyuu.png kairyuu_scaled.png icon_button.png icon_filter.png

all: $(IMAGES)

kairyuu.png: kairyuu.svg
	inkscape --export-width=256 --export-height=160 --export-png=$@ $^

kairyuu_scaled.png: kairyuu.svg
	inkscape --export-width=64 --export-height=40 --export-background='#000000' --export-background-opacity=0 --export-png=$@ $^

icon_button.png: icon_button.svg
	inkscape --export-width=24 --export-height=24 --export-background='#000000' --export-background-opacity=0 --export-png=$@ $^

icon_filter.png: icon_button.svg
	sed -e 's/\#....../#ffffff/g' $^ | inkscape --export-width=32 --export-height=32 --export-background='#000000' --export-background-opacity=0 --export-png=$@ /dev/stdin

clean:
	rm -f $(IMAGES)

install: all
	mkdir -p "${ELGAMEDATA}/Agencies"
	cp kairyuu.png kairyuu_scaled.png "${ELGAMEDATA}/Agencies"
	mkdir -p "${ELGAMEDATA}/Textures"
	cp icon_button.png icon_filter.png "${ELGAMEDATA}/Textures"

.PHONY: all clean install
