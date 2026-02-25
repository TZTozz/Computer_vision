function Gaussian_filter(image, size)
    sigma = (size/2)/3;
    h = fspecial('gaussian', [size, size], sigma);
    fi = imfilter(image,h);

    figure()
    subplot(2,1,1)
    imagesc(h), colormap gray, title(['Gaussian filter ', num2str(size), 'x', num2str(size)]);

    subplot(2,1,2)
    surf(h), xlabel('x'),ylabel('y'),zlabel('z');

    figure()
    subplot(1,2,1)
    imagesc(fi), colormap gray, axis square, title(['Filtered image with Guassian filter ', num2str(size), 'x', num2str(size)]);
    subplot(1,2,2)
    histogram(fi), axis square, title('Histogram of the image');
end