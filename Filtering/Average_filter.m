function Average_filter(image, dim)
    K=ones(dim)/(dim^2);
    fi = conv2(image,K,'same');

    figure()
    subplot (1,2,1)
    imagesc(fi),colormap gray, axis square, title(['Filtered image with moving average filter ', num2str(dim), 'x', num2str(dim)]);
    
    subplot(1,2,2)
    histogram (fi), axis square, title('Histogram of the image');
end