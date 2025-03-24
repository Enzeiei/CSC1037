# install-script

HOME := $(HOME)/local/bin
FILEGYATT := $(wildcard [a-z]*)

install: $(HOME) $(addprefix $(HOME)/, $(FILEGYATT))

$(HOME):
  mkdir -p $(HOME)

$(HOME).%: %
  install -m 755 $(FILEGYATT) $(HOME)
