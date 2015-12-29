SOURCES_BASE = types.sh reader.sh printer.sh
SOURCES_LISP = env.sh core.sh gherkin.sh
SOURCES = $(SOURCES_BASE) $(SOURCES_LISP)

all: gherkin

gherkin: $(SOURCES)
	echo "#!/usr/bin/env bash" > $@
	cat $+ | grep -v "^source " >> $@
	chmod +x $@

clean:
	rm -f gherkin
