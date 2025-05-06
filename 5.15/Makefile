PROJECT = info.smplayer.SMPlayer

build:
	flatpak run org.flatpak.Builder build-dir $(PROJECT).yml --repo=repo --force-clean

flatpak:
	flatpak build-bundle repo $(PROJECT).flatpak $(PROJECT)

clean:
	-rm info.smplayer.SMPlayer.flatpak
