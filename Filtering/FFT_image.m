function FFT_image(image)
    image=double(image);
    IMAGE=fft2(image);
    MOD=abs(IMAGE);
    PHI=angle(IMAGE);
    
    figure(),imagesc(log(fftshift(MOD))), colormap gray,xlabel('wx'),ylabel('wy'),axis square
    
    figure(),imagesc(fftshift(PHI)), colormap gray,xlabel('wx'),ylabel('wy'),axis square
    
    figure(),imagesc(real(fftshift((ifft2(MOD))))), colormap gray,xlabel('x'),ylabel('y'),axis square
    
    figure(),imagesc(real((ifft2(exp(1i*PHI))))), colormap gray,xlabel('x'),ylabel('y'),axis square
end