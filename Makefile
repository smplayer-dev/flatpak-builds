all: smplayer.flatpak

smplayer.flatpak:
	flatpak --user remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
	flatpak install -y --user org.kde.Platform/x86_64/5.15 org.kde.Sdk/x86_64/5.15
	flatpak-builder --repo=repo --force-clean --keep-build-dirs --install --user build-dir/ info.smplayer.SMPlayer.yml
	flatpak build-bundle repo smplayer.flatpak info.smplayer.SMPlayer

clean:
	-rm smplayer.flatpak
