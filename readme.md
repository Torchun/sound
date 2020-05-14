ffmpeg command to extract audio signal from video file</br>
<code>ffmpeg -i file.mkv -ss 00:00:20 -to 00:00:40 -c copy file-2.mkv</code></br>
<code>ffmpeg -i test.mp4 -ab 160k -ac 2 -ar 44100 -vn audio.wav</code></br>
</br>
Stereo right channel to mono:</br>
<code>ffmpeg -i stereo.wav -af pan=mono|FC=FR right_mono.wav</code></br>
...which is the same as:</br>
<code>ffmpeg -i stereo.wav -af pan=1|c0=c1 right_mono.wav</code></br>
 - <code>mono</code> is output channel layout or number of channels. Alternatively you could use <code>1</code> instead of <code>mono</code>.</br>
 - <code>FC=FR</code> create the Front Center channel of the output from the Front Right of the input.</br>
 - <code>c0=c1</code> is the same as the above in this case: create the first (and only) channel of the mono output (<code>c0</code>) from the second channel (<code>c1</code>) of the input.</br>
 - If you want the left channel instead use <code>FC=FL</code> or <code>c0=c0</code>.</br>
 </br>
<code></code></br>
<code></code></br>
</br>
</br>
</br>
