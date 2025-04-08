vid=videoinput('winvideo',1);
preview(vid);
for i=1:25
    a = input('拍照请按1，退出请按0');
    if a == 1
        frame =getsnapshot(vid);
        figure;
        imshow(frame)
        imwrite(frame, "C:\Users\Lingna\FaceReco"+num2str(i)+".jpg");
    else 
        exit()
    end
end