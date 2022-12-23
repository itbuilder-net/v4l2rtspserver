# v4l2rtspserver
This write-up is intended to help anyone who experienced problem while trying to install v4l2rtspserver written by Michel Promonet on a new Debian-based Raspbian OS Bullseye.

Running on a Raspberry Pi Model B Rev 2 and Zero W</br></br>

Source:  https://github.com/mpromonet/v4l2rtspserver </br>
which requires the following libraries:
<ul>
  <li>liblivemedia-dev</li>
  <li>liblog4cpp5-dev</li>
  <li>libasound2-dev</li>
  <li>libv4l2cpp (see v4l2wrapper section below)</li></br>
and, an optional openssl:
  <li>libssl-dev</li></br>
  Quick Steps:</br>
1.	sudo apt install liblivemedia-dev liblog4cpp5-dev libasound2-dev libssl-dev</br>
2.	git clone https://github.com/mpromonet/v4l2rtspserver.git</br>
3.	cd v4l2rtspserver</br>
4.	git clone https://github.com/video-dev/hls.js.git</br>
5.	git clone https://github.com/mpromonet/libv4l2cpp.git</br>
6.	cmake . && make && sudo make install</br>
</br>
Streaming: <br>
See "Start video stream" at https://siytek.com/raspberry-pi-rtsp-to-home-assistant/
