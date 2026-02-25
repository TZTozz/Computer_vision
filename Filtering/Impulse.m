function Impulse(image, size)
    h = zeros(size);
    h(ceil(size/2), ceil(size/2)) = 1;

    figure ()
    subplot(1,2,1)
    imagesc(h), colormap gray, axis square, title('Filter');

    subplot(1,2,2)
    imagesc(conv2(image, h, "same")), colormap gray, axis square, title('Impulse (no change)');
end