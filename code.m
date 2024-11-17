
 img = imread('input1.png');
 img = im2double(img);
 %RGBchannels
 red = img(:,:,1);
 green = img(:,:,2);
 blue = img(:,:,3);
 gray_img = rgb2gray(img);
 edges = edge(gray_img, 'canny');
 h =fspecial('gaussian', [15, 15], 5);
 low_freq = imfilter(gray_img, h, 'symmetric');
 gli = (2 * green- red- blue) ./ (2 * green + red + blue + 0.001);
 %Thresholding for water detection
 water_areas = low_freq < 0.2;
 water_areas = imclose(water_areas, strel('disk', 3)); 
 urban_sharp = imsharpen(gray_img, 'Radius', 2, 'Amount', 1.5); 
 urban_areas = urban_sharp > 0.6; 
 urban_areas = imclose(urban_areas, strel('disk', 2)); 
forest_areas = gli > 0.25; 
 forest_areas = imclose(forest_areas, strel('disk', 3)); 
 
 urban_areas_with_edges = urban_areas | edges; 
 forest_areas_with_edges = forest_areas | edges; 
 subplot(2, 2, 1);
 imshow(img);
 title('Original Image');
 %WaterAreas
 subplot(2, 2, 2);
 water_display = img;
 water_display(:,:,1) = water_display(:,:,1) .* water_areas;
 water_display(:,:,2) = water_display(:,:,2) .* water_areas;
 water_display(:,:,3) = water_display(:,:,3) .* water_areas;
 imshow(water_display);
 title('Water Areas');
 %UrbanAreas
 subplot(2, 2, 3);
 urban_display = img;
 urban_display(:,:,1) = urban_display(:,:,1) .* urban_areas_with_edges;
 urban_display(:,:,2) = urban_display(:,:,2) .* urban_areas_with_edges;
 urban_display(:,:,3) = urban_display(:,:,3) .* urban_areas_with_edges;
imshow(urban_display);
 title('Urban Areas');
 %Forest Areas
 subplot(2, 2, 4);
 forest_display = img;
 forest_display(:,:,1) = forest_display(:,:,1) .* forest_areas_with_edges;
 forest_display(:,:,2) = forest_display(:,:,2) .* forest_areas_with_edges;
 forest_display(:,:,3) = forest_display(:,:,3) .* forest_areas_with_edges;
 imshow(forest_display);
 title('Forest Areas');