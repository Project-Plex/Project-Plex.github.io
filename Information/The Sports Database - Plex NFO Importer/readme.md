
> [!NOTE]
> Support us on Patreon: <a href="https://patreon.com/ProjectKodi">patreon.com/ProjectKodi</a>

# Project Plex - The Sports Database - Plex NFO Importer
## TheSportsDB-NFO.bundle


<p align="left">
<ul>
  <li>Can access any Leagues/Seasons/Events/Teams/Players information. Access artwork online or locally.</li>
  <li>Only the appropriate folder structure, NFO files and video files are required. (Example files are available)</li>
  <li>Use our NFO Export tool: <a href="https://tsdb.sem-one.de/">https://tsdb.sem-one.de/</a> (Folder structure for sports series including NFO files in a zip package)</li>
    <li>Download: use the following link: <a href="https://github.com/Project-Plex/Project-Plex.github.io/tree/main/Downloads">TheSportsDB-NFO.bundle-0.9.1.zip</a></li>
    <li>Download Example Files: <a href="https://github.com/Project-Plex/Project-Plex.github.io/tree/main/Downloads">TheSportsDB-NFO_Demo_Files-0.9.1.zip</a></li>
    <li>There will later be separate league packages available for download on thesportsdb.com.</li>
    <li>Exchange NFO package in Discord channel, use the scraper from Project Kodi - <a href="https://github.com/Project-Kodi">The Sports Database Pyhton</a> to generate NFO files</li>
    <li>Download Windows Bat file that captures series folders and files. Just put it in the series folder and click! I urgently need examples of working Plex and Kodi libraries. Please help me, you can send me the output file in <a href="https://discord.gg/pFvgaXV">Discord</a>: <a href="https://github.com/Project-Plex/Project-Plex.github.io/tree/main/Downloads">get_full_list.zip</a></li>
  </ul>
  </p>

Github Source: <a href="https://github.com/Project-Plex/TheSportsDB-NFO.bundle">https://github.com/Project-Plex/TheSportsDB-NFO.bundle</a>
  
<a href="https://discord.com/channels/481047912286257152/481047912286257155"><img src="https://raw.githubusercontent.com/Project-Plex/PlexSportScanner/master/Information/images/discord-logo.png" alt="Join the chat at Discord" height="24"></a> Join us at Discord: <a href="https://discord.com/channels/481047912286257152/481047912286257155">TheDataDB</a>


# Documentation

- Download and installation
- Settings
- Display in Plex
- Example files
- NFO & Video file informations (An important section after the first test run with the demo files.)
- Information about this Project 


## Download and Installation


### Download & Installation

1. Download the [TheSportsDB-NFO.bundle.zip](https://github.com/Project-Plex/Project-Plex.github.io/tree/main/Downloads) from github,
2. extract it,
3. rename it to **TheSportsDB-NFO.bundle**,
4. find the [Plex Media Server data directory](https://support.plex.tv/hc/en-us/articles/202915258-Where-is-the-Plex-Media-Server-data-directory-located)
5. move the .bundle folder to the Plug-ins directory,
6. restart plex and test,
7. if necessary change the owner and permissions of the .bundle and
8. restart plex again.

<img src="_images/winfiles01.jpg" alt="Addon Settings">

<img src="_images/winfiles02.jpg" alt="Addon Settings">

### Download & Installation on ubuntu

1. Download from github and unzip
2. Remove "-master" from the end of both folder names.
3. Copy them to the folder:  /var/lib/plexmediaserver/Library/Application Support/Plex Media Server/Plug-ins
4. Find the group number for user "plex" by command "id plex".
5. "cd" to folder in step 3 and change ownership of both folder bundles: "sudo chown plex:{gid} XBMC*"
6. run "sudo service plexmediaserver restart".


## Settings

### Settings - Plex server 


- Server -> Settings -> Agents

  - **Shows -> TheSportsDB-NFO**: Local Media Assets (TV) -> Position 1, if not enabled, turn it on!
  - **Shows -> TheSportsDB-NFO**: TheSportsDB-NFO -> Position 2, if not enabled, turn it on!

  => Move with drag and drop to reach the desired position
  
<img src="_images/plugin01.jpg" alt="Addon Settings">


### Settings - Create library 

- Add Library -> Select type

  - **Type**: TV Shows

  - **Name**: Video Library Names, as example: `Sports`

  - **Language**: English - Desired language, currently depending on the contents of the NFO file. 

<img src="_images/plugin02.jpg" alt="Addon Settings">

- Add Library -> Add folders

  - **Path**: In our example, the video and NFO files are located under the following path: C:\Plex-Demo-Files\Sports

<img src="_images/plugin03.jpg" alt="Addon Settings">


- Add Library -> Advanced

  - **Agent**: Select agent `TheSportsDB-NFO`

<img src="_images/plugin04.jpg" alt="Addon Settings">


  - **use artwork from the local series folder, else from nfo file**: if switched on then use artwork location 'local' else 'link'

  - **artwork location**: Select agent `link` or `local` | link = get pictures from NFO file over internet, local = use artwork from filesystem

> [!NOTE]
> If you don't have any images in your video collection, the default settings will work.

<img src="_images/plugin05.jpg" alt="Addon Settings">

<img src="_images/plugin06.jpg" alt="Addon Settings">

  - **actor thumb location**: Select `link` or `local` | link = get pictures from NFO file over internet, local = use artwork from filesystem

<img src="_images/plugin07.jpg" alt="Addon Settings">

<img src="_images/plugin08.jpg" alt="Addon Settings">


## Display in Plex

### Display in Plex - Plex Default Skin


  - **Overview TV shows**: 

<img src="_images/view01.jpg" alt="Addon Settings">

  - **View TV show**: 

<img src="_images/view02.jpg" alt="Addon Settings">

  - **View Season**: 

<img src="_images/view03.jpg" alt="Addon Settings">

  - **View Episode**: 

<img src="_images/view04.jpg" alt="Addon Settings">

  - **View Episode editor**: 

<img src="_images/view05.jpg" alt="Addon Settings">




## Example files

### Example files - for Plex NFO Importer

  - **Sports folder**: League/TV show folders

<img src="_images/winfiles03.jpg" alt="Addon Settings">

  - **League/TV show folder from**:  `English Premiere League`

<img src="_images/winfiles04.jpg" alt="Addon Settings">

  - **Season folder from**:  `English Premiere League` Season `2021-2022`

<img src="_images/winfiles05.jpg" alt="Addon Settings">

  - **Download link**: <a href="https://github.com/Project-Plex/Project-Plex.github.io/tree/main/Downloads">TheSportsDB-NFO_Demo_Files-0.9.1.zip</a>

### Overview Github files

<img src="_images/github01.jpg" alt="Addon Settings">



## NFO & Video file informations

<img src="_images/nfofile01.jpg" alt="Addon Settings">



- The following information must be present in the NFO file.

  - **<season>**: The correct season number, no letters or hyphens

  - **<episode>**: The correct episode number, no letters or hyphens

- The following information are important for file naming.

  - **NFO File**: The NFO file must have the same name as the episode video file
  - **Video File**: Must contain the correct season and episode number


Example 1: Formula 1 => Season 2024: https://www.thesportsdb.com/season/4370-Formula-1/2024 / Episode: https://www.thesportsdb.com/event/1963748-Australian-Grand-Prix-Practice-1

  - **<season>**: 2024

  - **<episode>**: Formula 1 2024-03-22 Australian Grand Prix Practice 1.`S2024E14`.mkv

<img src="_images/sportsdb01.jpg" alt="Addon Settings">

> [!NOTE]
> Some leagues use the rounds multiple times and are therefore not usable. The episode number can only be determined by counting in this examle, or use ready to use NFO files with folders from thesportsdb.com.


Example 2: Formula E => Season 2021-2022: https://www.thesportsdb.com/season/4371-Formula-E/2021-2022 / Episode: https://www.thesportsdb.com/event/1392214-Monaco-E-Prix

  - **<season>**: 2022 => Do not use 2021-2022 or 2021, only 2022! Always the higher. In Filesystem, you can use /Season 2021-2022/ as folders.

  - **<episode>**: Formula E 2022-04-30 Monaco E Prix.`S2022E6`.mkv not Formula E 2022-04-30 Monaco E Prix.`S2021-2022E6`.mkv (Always the higher)

<img src="_images/sportsdb02.jpg" alt="Addon Settings">

> [!NOTE]
> Here we can take the rounds as episodes, but we have to be careful when naming the seasons!

## Information about this Project:

 NFO file Importer Agent for Plex, that uses www.thesportsdb.com

 The TheSportsDB.com Forum: <a href="https://www.thesportsdb.com/forum_topic.php?t=5972" target="_blank">[Plex Add-on] Plex NFO Importer</a>

 Project Plex: <a href="https://github.com/Project-Plex/">https://github.com/Project-Plex/</a> | Project Kodi: <a href="https://github.com/Project-Kodi/">https://github.com/Project-Kodi/</a>