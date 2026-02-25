function out = Generate_Gaussian(size, sigma)
    out = fspecial('gaussian', [size, size], sigma);
    figure (), mesh(out), title('Gaussian filter');
end