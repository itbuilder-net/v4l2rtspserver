# v4l2rtspserver
This write-up is intended to help anyone who experienced problem while trying to install v4l2rtspserver written by Michel Promonet on a new Debian-based Raspbian OS Bullseye. Don’t give up!

ASSUMPTION:  The system is Bullseye-d ready.</br></br>
![image](https://user-images.githubusercontent.com/87738020/137815872-3b2521f1-8bc8-4717-b614-3bb43ad5c7b4.png)


Source:  https://github.com/mpromonet/v4l2rtspserver </br>
which requires the following libraries:
<ul>
  <li>liblivemedia-dev</li>
  <li>liblog4cpp5-dev</li>
  <li>libasound2-dev</li>
  <li>libv4l2cpp (see v4l2wrapper section below)</li></br>
and, an optional openssl:
  <li>libssl-dev</li></br>
<p style="text-decoration: underline;">
  Quick Steps:</p>
1.	sudo apt install liblivemedia-dev liblog4cpp5-dev libasound2-dev libssl-dev</br>
2.	git clone https://github.com/mpromonet/v4l2rtspserver.git</br>
3.	cd v4l2rtspserver</br>
4.	git clone https://github.com/mpromonet/libv4l2cpp.git v4l2wrapper</br>
5.	git clone https://github.com/video-dev/hls.js.git</br>
6.	Make sure all .js files exist in <i>hls.js/dist</i> directory. If not, download them from the repository into the <i>dist</i> sub-directory.</br>
7.	cmake . && make && sudo make install</br>
</br>
<img width="662" alt="install-complete" src="">
</br></br>
<p>Detailed Steps:</p>
//TODO: 

