function out = Gaussian_noise(image, dev)       %dev is the standard deviation
    out=double(image)+dev*randn(size(image));

    figure(), imagesc(out),colormap gray, title('Gaussian noise');

    figure(), histogram(out), title('Histogram with Gaussian noise');
end