# RetroPie-Bgm
This will add background music while in emulation station on RetroPie (and possibly other debian systems)

## credits and more info go to:
livewire from the retropie forum:
https://retropie.org.uk/forum/topic/347/background-music-continued-from-help-support

*Livewire 
'So approximately a week and a half ago I had inquired if background music was an option available within RetroPie; long story short not any time soon unless I coded it myself. Spent about 2-3 hours last night and came up with a (semi-complete) version that does work and should be easy enough to adjust/adapt for later:'
Version 1: http://pastebin.com/rFdxRivq
Version 1.01: http://pastebin.com/BVBxM41X (4/22/16)
Version 1.02: http://pastebin.com/H8hT6YeW (4/22/16, afternoon)
Version 1.03: http://pastebin.com/7E9JiZGQ (4/23/16)
(Hopefully no one minds Pastebin, I'm still editing the file on my Dropbox and I'd rather not risk someone grabbing a broken version)

*Script's purpose was simple, play some background music whenever you're searching for a game inside Emulation Station. Long story short, it just watches for any emulator in the internal list "emulatornames" to be running, turns the music volume down, and waits for the emulator to exit before turning it back up.