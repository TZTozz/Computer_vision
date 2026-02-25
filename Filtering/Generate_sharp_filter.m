function out = Generate_sharp_filter(size, dim)
    A = zeros(dim);
    A(ceil(dim/2),ceil(dim/2)) = 2;
    B = ones(dim)/dim^2;

    C = A - B;

    out=zeros(size);
    
    center = ceil(size/2);
    half_kernel = floor(dim/2);
    out(center - half_kernel : center + half_kernel, center - half_kernel:center + half_kernel) = C;

    figure(), surf(out),xlabel('x'),ylabel('y'),zlabel('z'), title('Sharp filter surface');
end
