
rem "C:\Program Files\VideoLAN\VLC\vlc.exe" -vvv  --sout-ffmpeg-strict=-2 --sub-track=0 --no-sout-all --sout=#transcode{vcodec=h264,venc=x264{profile=main,level=41},acodec=mpga,soverlay}:standard{access=file,mux=mp4,dst="D:\Media\DVD Library\FullDisc\SPECTRE\x.mp4"} --file-logging --logfile=vlc-log.txt "dvdsimple:///D:\Media\DVD Library\FullDisc\SPECTRE\VIDEO_TS#28-28" 

"C:\Program Files\VideoLAN\VLC\vlc.exe" -vvv  --sout-ffmpeg-strict=-2 --audio-track=1 --sub-track=0 --no-sout-all --sout=#transcode{vcodec=h264,venc=x264{profile=main,level=41},acodec=mp3,soverlay}:standard{access=file,mux=mp4,dst="D:\Media\DVD Library\FullDisc\SPECTRE\mj.mp4"} --file-logging --logfile=vlc-log.txt "dvdsimple:///E:\#20-20" 