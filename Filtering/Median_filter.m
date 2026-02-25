function Median_filter(image, size)
    out = medfilt2(image, [size,size]);

    figure ()
    subplot(1,2,1)
    imagesc(out), colormap gray, axis square, title(['Filtered with median filter ', num2str(size), 'x', num2str(size)]);
    subplot(1,2,2)
    histogram(out), axis square, title('Histogram of the image');
end