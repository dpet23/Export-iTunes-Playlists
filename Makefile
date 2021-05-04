ALL: exportplaylists

exportplaylists: ExportPlaylists.applescript
	osacompile -o ExportPlaylists.app ExportPlaylists.applescript

deploy-iTunes: exportplaylists
	mkdir -p ~/Library/iTunes/Scripts
	mv ExportPlaylists.app ~/Library/iTunes/Scripts/

deploy-Music: exportplaylists
	mkdir -p ~/Library/Music/Scripts
	mv ExportPlaylists.app ~/Library/Music/Scripts/

clean:
	rm -rfv *.app

clean-deploy:
	rm -rfv ~/Library/iTunes/Scripts/ExportPlaylists.app
	rm -rfv ~/Library/Music/Scripts/ExportPlaylists.app
