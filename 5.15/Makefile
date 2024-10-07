PROJECT = info.smplayer.SMPlayer

build:
	flatpak-builder build-dir $(PROJECT).yml --repo=repo --force-clean

flatpak:
	flatpak build-bundle repo $(PROJECT).flatpak $(PROJECT)

