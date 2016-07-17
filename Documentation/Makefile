MANUAL = EL_Manual.pdf

all: $(MANUAL)

%.pdf: %.lyx
	lyx -E pdf $@ $^

clean:
	rm -f *.pdf

install: $(MANUAL) # $(ELGAMEDATA)/$(MANUAL)
	mkdir -p ${ELGAMEDATA}
	cp *.pdf ${ELGAMEDATA}

.PHONY: all clean install
