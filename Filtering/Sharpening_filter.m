function Sharpening_filter (image, dim)
    k = ones(dim)/(dim^2);
    
    smoothed = imfilter(image, k, 'replicate', 'same');
    detailed = image - smoothed;
    
    figure(), imagesc(detailed), colormap gray, title('Detail of the image');
    
    sharpned = image + detailed;
    figure(), imagesc(sharpned), colormap gray, title('Sharpened image');
end