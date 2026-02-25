close all
%% Part 1
i235 = imread("i235.png");
figure(), imagesc(i235),colormap gray, title('Original image i235');
figure(), histogram(i235), title('Histogram of i235');


tree = imread("tree.png");
figure(), imagesc(tree),colormap gray, title('Original image tree');
figure(), histogram(tree), title('Histogram of tree');

%%
%Adding Gaussian noise
G_noised_i235 = Gaussian_noise(i235, 20);     %20 is the standard deviation
G_noised_tree = Gaussian_noise(tree, 20);


%Adding salt & pepper noise
SP_noised_i235 = salt_pepper_noise(i235, 20);   %20 is the density (%)
SP_noised_tree = salt_pepper_noise(tree, 20);

%% Part 2
%Moving average filter
Average_filter(G_noised_i235,3);
Average_filter(G_noised_i235,7);

Average_filter(SP_noised_i235,3);
Average_filter(SP_noised_i235,7);


Average_filter(G_noised_tree,3);
Average_filter(G_noised_tree,7);

Average_filter(SP_noised_tree,3);
Average_filter(SP_noised_tree,7);

%%
%Guassian filter
Gaussian_filter(G_noised_i235, 3);
Gaussian_filter(G_noised_i235, 7);

Gaussian_filter(SP_noised_i235, 3);
Gaussian_filter(SP_noised_i235, 7);


Gaussian_filter(G_noised_tree, 3);
Gaussian_filter(G_noised_tree, 7);

Gaussian_filter(SP_noised_tree, 3);
Gaussian_filter(SP_noised_tree, 7);

%%
%Median filter
Median_filter(G_noised_i235, 3);
Median_filter(G_noised_i235, 7);

Median_filter(SP_noised_i235, 3);
Median_filter(SP_noised_i235, 7);

Median_filter(G_noised_tree, 3);
Median_filter(G_noised_tree, 7);

Median_filter(SP_noised_tree, 3);
Median_filter(SP_noised_tree, 7);

%% Part 3
%Impulse    (slide 41)
Impulse(i235, 7);
Impulse(tree, 7);

%Shift right by 3   (slide 42)
Shift_right(i235, 7);
Shift_right(tree, 7);

%Blur   (slide 43)
Average_filter(i235, 7);
Average_filter(tree, 7);

%Sharpening filter  (slide 44-45)
Sharpening_filter(i235, 7);
Sharpening_filter(tree, 7);

%% Part 4
%Magnitude of images
FFT_mag(i235);
FFT_mag(tree);

%Magnitude of Gaussian
Gaussian = Generate_Gaussian(101, 5);
FFT_mag(Gaussian);

%Magnitude of sharping filter
Sharp_filter = Generate_sharp_filter(101, 7);
FFT_mag(Sharp_filter);








