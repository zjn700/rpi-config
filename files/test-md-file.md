# test-md-file

don't think i'd want to write a novel this way inside vscode. but this will work
well enough for coding, i think.

oh that worked well. it created the note inside the same directory from the text
i'd selected with the vim selection command (shift-v). pretty damn cool.

it also created a link in the previous document. Let's try that here

[[next-document.md]]

ok. it's a little complicated. but it works. by the way, so far there's been no problem with repeating keys. which is really awesome. also, i think that the markdown extension takes care of formatting paragraphs automatically, which is useful. I suppose that there is a similar extension for text files as well.

## Toggle the terminal

Gotta toggle the terminal if it is already open to put make it the active window (with cursor).

back to the handheld keyboard it's a little harder to do but with a little practice it might be ok.

The keys keys are a little stiff, but when coding it's probably better to go slower anyway.

 just a test a eye-level. This works fine too. Again, it's a little hard to push the keys and there is only one shift key.

here we go again. the spellcheck works even though you are not in normal mode, which is better than vim. kinda the best of both worlds.  

so here we are in zen mode. not sure if the key commands work here, but i'm about to find out.

yep, they do. pretty sweet.

## Switching to the preview mode

You can switch to preview mode using the ctrl-shift-P option as well. and you have two options. 

- you can just open the preview mode, which will hide the markdown file. but you'll you have to switch back to the markdown file via control-P.

- you can also open the preview mode to the side, but i'm not sure how that works in zen mode. About to find out.

Note that the preview tab is not linked to the the markdown tab. Maybe preview locking does that. yep it does.

## Switching tabs.

it is possible to switch tabs with control-1, 2, 3. If only two tabs are open, control-3 will open a new one.

## Closing tabs

Control-w **will** close the currently active tab.

## Summary

So far this has been an enjoyable text entry process. There are a few glitches. the Pi can run a little slowly at times. And there is the issue of jumpy scrolling of the preview pane when you are near the bottom of the markdown page. This can be fixed by putting a heading at the bottom of the file (I'm just using an ellipsis.). Also, if you have the preview in locked mode, it is not possible to move around the preview without first being in the markdown file. 

## Retesting a bluetooth keyboard in VS Code
- using an iPad with VNC as the monitor.
- not sure why iPad isn't in the suggested list of corrections for ipad.
- i guess this could work 

hm. i could get used to this. standing up right now, with the iPad and keyboard sitting high on the laundry basket. i do miss the suggested words function of ios.

if i just slow down as i type, it works out a little better. fewer mistakes. less backspacing. 😏

## Still playing 🖐️
- but not feeling especially good today.
- probably just a cold?

## completed the first steps of the networking script
- was able to isolate the SSID of the current wifi network using iwconfig, grep, awk, and sed.
- will use it to copy a preconfigured dhcpcd.conf file specifying a static ip for that SSID
- but that will only work for known ips. if i go to another city or the network changes, this work-around won't work anymore.
- have to come up with a way of creating a new dhcpcd.conf whenever the network's ip address changes, and it has to work with a headless connection. i can foresee situation in which i won't be able to use VNC with the iPad with my mobile hotspots, unless i can get this done.
- well, the SSIDs on my phones will be the same, but i won't be able to connect to the internet.
- i could have a pre-configured dhcpcd.conf file without a static ip for that situation. after testing to see if the internet is available (ping?), i could just switch to that one if it isn't. then i'd have to use a wifi scanning app to find the pi. of course, that's really clumsy and why i set up a static ip in the first place.
- discovered this problem only after i connected to my phones' hotspots, but in both cases, couldn't access the internet.


## ...
