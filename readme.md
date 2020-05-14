## FFMPEG basics
ffmpeg command to extract audio signal from video file</br>
<code>ffmpeg -i file.mkv -ss 00:00:20.0 -to 00:00:40.0 -c copy file-2.mkv</code></br>
<code>ffmpeg -i test.mp4 -ab 160k -ac 2 -ar 44100 -vn audio.wav</code></br>
</br>
Stereo right channel to mono:</br>
<code>ffmpeg -i stereo.wav -af pan=mono|FC=FR right_mono.wav</code></br>
...which is the same as:</br>
<code>ffmpeg -i stereo.wav -af pan=1|c0=c1 right_mono.wav</code></br>
 - <code>mono</code> is output channel layout or number of channels. Alternatively you could use <code>1</code> instead of <code>mono</code>.</br>
 - <code>FC=FR</code> create the Front Center channel of the output from the Front Right of the input.</br>
 - <code>c0=c1</code> is the same as the above in this case: create the first (and only) channel of the mono output (<code>c0</code>) from the second channel (<code>c1</code>) of the input.</br>
 - If you want the left channel instead use <code>FC=FL</code> or <code>c0=c0</code>.

That said, the command to extract one audio channel from video file with given start and stop time:</br>
<code>fmpeg -y -i ./input.mkv -ss 00:26:00.50 -to 00:26:05.11 -ab 320k -ar 44100 -ac 1 -vn ./audio.wav</code></br>
Where:
 - <code>-ss</code> start time 00:26:00.50 </br>
 - <code>-to</code> end time 00:26:05.11 </br>
 - <code>-ab 320k</code> audio bitrate 320k</br>
 - <code>-ar 44100</code> audio sampling rate 44100, amplitude samples per second</br>
 - <code>-ac 1</code> audio channels 1, mono</br>
 - <code>-vn</code> no video</br>
 </br>
<code></code></br>
</br>
