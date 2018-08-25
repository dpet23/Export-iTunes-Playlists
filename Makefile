ALL: exportplaylists

exportplaylists: ExportPlaylists.applescript
	osacompile -o ExportPlaylists.app ExportPlaylists.applescript

deploy: exportplaylists
	mkdir -p ~/Library/iTunes/Scripts
	mv ExportPlaylists.app ~/Library/iTunes/Scripts/

clean:
	rm -rfv *.app

clean-deploy:
	rm -rfv ~/Library/iTunes/Scripts/ExportPlaylists.app
