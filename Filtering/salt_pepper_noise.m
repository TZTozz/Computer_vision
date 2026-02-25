function out = salt_pepper_noise(image, density)
    image=double(image);
    [rr,cc]=size(image);
    maxv=max(max(image));
    indices=full(sprand(rr,cc,density/100)); 
    mask1=indices>0 & indices<0.5;  mask2=indices>=0.5;
    out= image.*(~mask1) ;
    out=out.*(~mask2)+maxv*mask2;

    figure(), imagesc(out),colormap gray, title('Salt & pepper noise')

    figure(), histogram(out), title('Histogram with salt & pepper noise');
end