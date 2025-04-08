
clear
vid = videoinput('winvideo', 1, 'MJPG_1280x720');
set(vid,'ReturnedColorSpace','rgb');
vidRes=get(vid,'VideoResolution');
width=vidRes(1);
height=vidRes(2);
nBands=get(vid,'NumberOfBands');
hImage=image(zeros(vidRes(2),vidRes(1),nBands));
preview(vid,hImage);
