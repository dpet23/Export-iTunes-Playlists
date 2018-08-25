ALL: exportplaylists

exportplaylists: ExportPlaylists.applescript
	osacompile -o ExportPlaylists.app ExportPlaylists.applescript

clean:
	rm -rfv *.app
