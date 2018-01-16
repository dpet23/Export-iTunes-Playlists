# Export iTunes Playlists
###### A script to export playlists from iTunes to a folder. Includes the song files and an m3u playlist file.
###### Created to easily export playlists and media from iTunes to Android.

---

Links:
* [This repository](https://github.com/dpet23/Export-iTunes-Playlists)
* [Latest release](../../releases/latest)

---

**NOTE:**

* This script will work only with iTunes on _Macintosh_ computers. It's written in AppleScript, a language built into the Mac operating system since Mac OS 7.

* Tested with:
  * macOS 10.11.6 - 10.13.2
  * iTunes 12.4.3 - 12.7.2

---

## How to use

To run the script manually:
1. Download the script or released app.
1. For the app, unzip and double-click to open.
1. For the script, either:
    1. Double-click the downloaded file, and then choose `Script -> Run` from the Script Editor menu.
    1. Or, from the Terminal, run
```bash
osascript ExportPlaylists.scptd
```

To integrate the script into iTunes:
1. Download the script or released app.
1. Open a new Finder window, and navigate to `/Users/[username]/Library/iTunes/Scripts/`.
    1. Option-click the Finder's `Go` menu and select `Library`.
    1. From the Library, open or create the folder `iTunes`.
    1. Inside the iTunes folder, open or create the folder `Scripts`.
1. Move the script file or app to `/Users/[username]/Library/iTunes/Scripts/`.
1. Open iTunes.
1. The script can be run by opening iTunes's Script menu (scroll icon) and selecting the script's name.

---

## Options
The options that can be set before exporting:

* The playlists to export (one or more can be chosen).
* The location in which to export.
* The method in which to export multiple playlists:
  * Same folder - Creates a new folder and places all songs from all playlists there. All m3u playlist files are saved to a subfolder.
  * Different folders - Makes separate subfolders for each playlist. The m3u playlist is saved in this folder, and a further subfolder is made for the media files.
* The folder structure and filename rules to use for the media files.
  * Can use the iTunes metadata. Available attributes are: `[album]`, `[album artist]`, `[artist]`, `[composer]`, `[track name]`, `[track number]`, `[disc number]`, `[playlist order number]`, `[original file name]`.
  * These attributes can be used to form the folder structure and filename.  
      For example: `[artist] > [album] > [track number] - [track name]`  
        - This will create `<export location>/<playlist name>/[artist]/[album]/file.extension`.  
        - The file will be renamed to `[track number] - [track name]`, and its original extension will be kept.

---

## Why use the script?

iTunes already has an option to export a playlist. This creates a playlist file in several formats (`m3u`, `xml`, etc.), but doesn't export the actual media files, which can make it difficult to use the exported playlists on other devices.

The script makes a copy of all media files in a playlist alongside the m3u file. However, m3u is the only format supported.
