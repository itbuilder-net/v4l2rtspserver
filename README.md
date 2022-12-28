# v4l2rtspserver
This write-up is intended to help anyone who has experienced problem while trying to install v4l2rtspserver written by Michel Promonet on a new Debian-based Raspbian OS Bullseye.

System used: <ul>
<li>Raspberry Pi Model B Rev 2</li>
<li> Zero W</li></ul></br></br>
Source:  https://github.com/mpromonet/v4l2rtspserver </br>
which requires the following libraries:
<ul>
  <li>liblivemedia-dev</li>
  <li>liblog4cpp5-dev</li>
  <li>libasound2-dev</li>
  <li>libv4l2cpp (see v4l2wrapper section below)</li></br>
and, an optional openssl:
  <li>libssl-dev</li>
</ul></br>
  Quick Steps:</br>
1.	sudo apt install liblivemedia-dev liblog4cpp5-dev libasound2-dev libssl-dev</br>
2.	git clone https://github.com/mpromonet/v4l2rtspserver.git</br>
3.	cd v4l2rtspserver</br>
4.	git clone https://github.com/video-dev/hls.js.git (do this if config failed as shown below)</br>
5.	git clone https://github.com/mpromonet/libv4l2cpp.git (do this if config failed as shown below)</br>
6.	cmake . && make && sudo make install</br></br>
Streaming: <br>
See "Start video stream" at https://siytek.com/raspberry-pi-rtsp-to-home-assistant/<br><br>
Best RTSP server?<br>
<img src="https://github.com/itbuilder-net/v4l2rtspserver/blob/main/v4l2rtspserver-live.png"><br>
Config failed:<br>
<img src="https://github.com/itbuilder-net/v4l2rtspserver/blob/main/clone-failed.png">

