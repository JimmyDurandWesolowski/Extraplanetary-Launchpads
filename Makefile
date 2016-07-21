KSPDIR ?= $(HOME)/ksp/KSP_linux
export KSPDIR := $(subst \ ,\\ ,$(KSPDIR))
export MANAGED = $(KSPDIR)/KSP_Data/Managed
export GAMEDATA	= $(KSPDIR)/GameData
export ELGAMEDATA = $(GAMEDATA)/ExtraplanetaryLaunchpads
export PLUGINDIR = $(ELGAMEDATA)/Plugins
export APIEXTDATA = $(PLUGINDIR)

export RESGEN2 = resgen2
export GMCS = gmcs
export GIT = git
export TAR = tar
export ZIP = zip
ifdef DEBUG
  export DEBUG = 1
endif

.PHONY: all clean info install

SUBDIRS=Assets Documentation GameData Source

all clean install:
	$(foreach dir,$(SUBDIRS),$(MAKE) -C $(dir) $@;)

info:
	@echo "Extraplanetary Launchpads Build Information"
	@echo "    resgen2:  ${RESGEN2}"
	@echo "    gmcs:     ${GMCS}"
	@echo "    git:      ${GIT}"
	@echo "    tar:      ${TAR}"
	@echo "    zip:      ${ZIP}"
	@echo "    KSP Data: ${KSPDIR}"
	@echo "    Plugin:   ${PLUGINDIR}"
