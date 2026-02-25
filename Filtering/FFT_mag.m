function FFT_mag(image)
    image=double(image);
    IMAGE=fft2(image);
    f=fftshift(IMAGE);

    figure(),imagesc(abs(f)), colormap gray,xlabel('wx'),ylabel('wy'),axis square, title('Magnitude')
    figure(), surf(abs(f)), title('Surface of the magnitude');
end 