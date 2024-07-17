

> [!NOTE]
> Please use: <a href="https://github.com/mmmmmtasty/SportScanner">Plex SportScanner</a> from mmmmmtasty!

# Project Plex - The Sports Database - PlexSportScanner 

<p align="left">
    
<ul>
    <li>Coming..</li>
    <li>Download: use the following link: <a href="https://github.com/Project-Plex/Project-Plex.github.io/tree/main/Downloads">https://github.com/Project-Plex/Project-Plex.github.io/tree/main/Downloads</a></li>
    <li>File naming tools for Sports Database: <a href="https://www.tinymediamanager.org/">TinyMediaManager</a> | <a href="https://gitlab.com/tinyMediaManager">TinyMediaManager - Gitlab</a> and yet not supported: Media Companion, MediaElch, Radarr, Sonarr, Jellyfin,.. help and contact the software manufacturers!</li>
    <li>Plex Forum: <a href="https://forums.plex.tv/t/sports-integration-mod-agent-for-thesportsdb-com/739554/1">SportScanner</a></li>
    <li>Download Example Files: <a href="https://raw.githubusercontent.com/Project-Plex/PlexSportScanner/main/Information/File%20Naming%20%26%20Tools/Example%20files%20for%20naming/Example%20files%20for%20naming.zip">Example files for naming.zip</a></li>
      

  </ul>
  </p>

Github Source: <a href="https://github.com/Project-Plex/PlexSportScanner">https://github.com/Project-Plex/PlexSportScanner</a>
Github Source: <a href="https://github.com/Project-Plex/PlexSportScanner/tree/main/Information">https://github.com/Project-Plex/PlexSportScanner/tree/main/Information</a>
  

> [!NOTE]
> Support us on Patreon: <a href="https://patreon.com/ProjectKodi">patreon.com/ProjectKodi</a>


# PlexSportScanner - SportScanner

### This project is not active!


Project Plex: <a href="https://github.com/Project-Plex/">https://github.com/Project-Plex/</a> | Project Kodi: <a href="https://github.com/Project-Kodi/">https://github.com/Project-Kodi/</a>


<a href="https://discord.com/channels/481047912286257152/481047912286257155"><img src="https://raw.githubusercontent.com/Project-Plex/PlexSportScanner/master/Information/images/discord-logo.png" alt="Join the chat at Discord" height="24"></a> Join us at Discord: <a href="https://discord.com/channels/481047912286257152/481047912286257155">TheDataDB</a>


## Information about this Project

 - Scanner and Metadata Agent for Plex, that uses www.thesportsdb.com

 - Please use our documentation first: <a href="https://github.com/Project-Plex/Project-Plex.github.io">https://github.com/Project-Plex/Project-Plex.github.io</a>

## 

> [!TIP]
> Please use our Example Video Demo Files after Installation - Sport Mediathek : <a href="https://github.com/Project-Plex/Project-Plex.github.io/tree/main/Downloads">Example files for naming-PlexSportScanner.zip</a>



# Installation

Plex main folder location:

    * '%LOCALAPPDATA%\Plex Media Server\'                                        # Windows Vista/7/8
    * '%USERPROFILE%\Local Settings\Application Data\Plex Media Server\'         # Windows XP, 2003, Home Server
    * '$HOME/Library/Application Support/Plex Media Server/'                     # Mac OS
    * '$PLEX_HOME/Library/Application Support/Plex Media Server/',               # Linux
    * '/var/lib/plexmediaserver/Library/Application Support/Plex Media Server/', # Debian,Fedora,CentOS,Ubuntu
    * '/usr/local/plexdata/Plex Media Server/',                                  # FreeBSD
    * '/usr/pbi/plexmediaserver-amd64/plexdata/Plex Media Server/',              # FreeNAS
    * '${JAIL_ROOT}/var/db/plexdata/Plex Media Server/',                         # FreeNAS
    * '/c/.plex/Library/Application Support/Plex Media Server/',                 # ReadyNAS
    * '/share/MD0_DATA/.qpkg/PlexMediaServer/Library/Plex Media Server/',        # QNAP
    * '/volume1/Plex/Library/Application Support/Plex Media Server/',            # Synology, Asustor
    * '/raid0/data/module/Plex/sys/Plex Media Server/',                          # Thecus
    * '/raid0/data/PLEX_CONFIG/Plex Media Server/'                               # Thecus Plex community

 - Download the latest release from https://github.com/Project-Plex/Project-Plex.github.io/tree/main/Downloads
 - Extract files, example: PlexSportScanner V.0.9.1.zip
 - Copy the extracted directory "Scanners" into your Plex main folder location - check the list above for more clues
 - Copy the extracted directory "SportScanner.bundle" into the Plug-ins directory in your main folder location - check the list above for more clues
 - You may need to restart Plex
 - Create a new **TVShow library** and under Advanced options you should be able to select "SportScanner" as both your scanner and metadata agent.

# Media Format

The SportScanner scanner requires one of two folder structures to work correctly, the first of which matches Plex's standard folder structure.

## RECOMMENDED METHOD

Follow the Plex standards for folder structure - TV Show\Season\<files>. For SportScanner, TV Shows = League Name. For example for 2015/2016 NHL you would do something like the following:

 - ~LibraryRoot/NHL/Season 1516/NHL.2015.09.25.New-York-Islanders.vs.Philadelphia-Flyers.720p.HDTV.60fps.x264-Reborn4HD_h.mp4

In this scenario you still need all the information in the file name, I aim to remove that requirement down the line. The only information that comes only from the folder structure is the season. 

## Alternative naming standard

You can also choose to ignore the season directory and have the scanner work it out with a folder structure like so:

 - ~LibraryRoot/Ice Hockey/NHL/NHL.2015.09.25.New-York-Islanders.vs.Philadelphia-Flyers.720p.HDTV.60fps.x264-Reborn4HD_h.mp4

 THERE IS A DOWN SIDE TO THIS! For this to work you must include a file in each league directory called "SportScanner.txt" that contains information about how the seasons work for this sport. The first line in the file will always be "XXXX" or "XXYY". "XXXX" means that the seasons happens within one calendar year and will therefore be named "2015" of "1999" for example. "XXYY" means that a season occurs across two seasons and will take the format "1516" or "9899" for example. When you define the season as "XXYY" you MUST then on the next line write the integer values of a month and a day in the form "month,day". This should be a a month and a day somewhere in the off-season for that sport. This tells the scanner when one season has finished and the next one is beginning to ensure that it puts files in the correct season based off the date the event happened. As an example, if you are trying to add NHL you would create a file at the following path:

  - ~LibraryRoot/Ice Hockey/NHL/SportScanner.txt

In this instance the contents of this file would be as follows, saying that seasons should be in "XXYY" format and a date in the middle of the off-season is 1st July:

XXYY
7,1

## NOT RECOMMENDED (but works for now)

SportScanner does not actually pay attention to the name of the League directory when it comes to matching events - all info has to be in the filename. This means that you can still group all sports together and as long as they share a season format you can create a SportScanner.txt file as outlined above and everything will work.

This is rubbish, it kind of accidentally works, I don't recommend it as I will cut it out as part of improvement works in future.

# Known Issues
 - No posters for seasons
 - Can only handle individual files, not multipart or those in folders
 - All information must be in the filename regardless of the directory structure.

# Additional Metadata

The presence of a .SportScanner metadata file can be used to append additional text to the title of the event as well as override a portion of the episode number.
Normally the episode number is of the form `YYMMDDHHHH` where YY is the year, MM is the month, DD is the day, and HHHH is based on a hash.  If the first line of the `.SportScanner` file is a number it will be used in place of the hash.
The second line of the `.SportScanner` file will be appended to the title of the event.

 - ~LibraryRoot/Formula 1/Season 2019/Formula 1 2019-06-30 Austrian Grand Prix - 03 Post-Race Analysis.mp4
 - ~LibraryRoot/Formula 1/Season 2019/Formula 1 2019-06-30 Austrian Grand Prix - 03 Post-Race Analysis.SportScanner

In the above example, the `Formula 1 2019-06-30 Austrian Grand Prix - 03 Post-Race Analysis.SportScanner` file contains the following text:

```
3
(Post-Race Analysis)
```

The resulting episode number is `1906300003` and the resulting title is `Austrian Grand Prix (Post-Race Analysis)`

# API Key

if you have your own API key for thesportsdb.com and want to use it, create a file in the SportScanner data directory.  On Linux, this directory is
```
/var/lib/plexmediaserver/Library/Application Support/Plex Media Server/Plug-in Support/Data/com.plexapp.agents.sportscanner
```
Create a plain text file named 'SportScanner.ini' in that directory (case sensitive if your OS is) and enter
```
[thesportsdb.com]
apikey=<your api key>
```

## Please use our demo files, you will save yourself a lot of time!

> [!WARNING]
> Please use our Example Video Demo Files after Installation - Sport Mediathek : <a href="https://github.com/Project-Plex/Project-Plex.github.io/tree/main/Downloads">Example files for naming-PlexSportScanner.zip</a>
