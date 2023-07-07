%Finding cones from image
%first have matlab find the desired file
rgb = imread('C:\Users\ethan\Desktop\Cones\9_RGB_FITC.jpg');

%convert it to black and white 
gray_image = rgb2gray(rgb);

%FOR GREEN PLOTS remove the majority of background dots from the image
bw= imbinarize(gray_image, 'global');

%removes all dots less than a certain number of pixels ( bright dots that
%aren't big enough to be cones) for GREEN
%You can increase the sensitivity to 2 or 3 based on how many datapoints
%that aren't cones still appear. If cones aren't showing up decease
%sensitivity to 1
bw= bwareaopen(bw, 1);


CC = bwconncomp(bw)
numPixels = cellfun(@numel,CC.PixelIdxList);
[biggest,idx] = max(numPixels);
bw(CC.PixelIdxList{idx}) = 0;
CC = bwconncomp(bw)

imshowpair(rgb, bw,'montage')
