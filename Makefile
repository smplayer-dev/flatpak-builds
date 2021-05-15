all: smplayer.flatpak

smplayer.flatpak:
	flatpak --user remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
	flatpak install -y --user org.kde.Platform/x86_64/5.15 org.kde.Sdk/x86_64/5.15 io.qt.qtwebkit.BaseApp/x86_64/5.15
	flatpak-builder --repo=repo --force-clean --keep-build-dirs --install --user build-dir/ info.smplayer.SMPlayer.yml
	flatpak build-bundle repo smplayer.flatpak info.smplayer.SMPlayer

test.flatpak:
	flatpak-builder --repo=repo --force-clean --keep-build-dirs --install --user build-dir/ info.smplayer.Test.yml
	flatpak build-bundle repo test.flatpak info.smplayer.Test

ffmpeg.flatpak:
	flatpak-builder --repo=repo --force-clean --keep-build-dirs --install --user build-dir/ org.ffmpeg.FFmpeg.yml
	flatpak build-bundle repo ffmpeg.flatpak org.ffmpeg.FFmpeg

mpv.flatpak:
	flatpak-builder --repo=repo --force-clean --keep-build-dirs --install --user build-dir/ io.mpv.Mpv.yml
	flatpak build-bundle repo mpv.flatpak io.mpv.Mpv

clean:
	-rm smplayer.flatpak
	-rm test.flatpak
	-rm ffmpeg.flatpak
	-rm mpv.flatpak
