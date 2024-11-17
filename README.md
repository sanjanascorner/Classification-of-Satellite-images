# Classification of satellite images into water, land and urban areas

### Project Description: 
Satellite image processing is a crucial area of research due to its broad applications, ranging from environmental monitoring to urban planning and disaster management. The field has evolved significantly, transitioning from traditional methods involving handcrafted features to advanced techniques such as machine learning.
This repository focuses on satellite image analysis by implementing a systematic, step-by-step process using image processing techniques to classify a given image into water, forest, and urban areas.
The entire process is implemented using MATLAB
#### Summary - 

#### Course concepts used - 
1. Preprocessing by using grayscale conversion,median filtering and histogram equalization
2. Spatial Filtering concepts such as Gaussian Filtering,Thresholding and Edge Detection.
3. Morphological Operations such as Closing.
   
   
#### Additional concepts used -
1. RGB channels:  Red, Green, and Blue components of an image, where each channel contains intensity values of that particular image.
   - `img(:,:,1)` extracts the Red channel of the image.
- `img(:,:,2)` extracts the Green channel of the image.
- `img(:,:,3)` extracts the Blue channel of the image.

3. GLI(Green Leaf Index): Computes regions high in vegetation in the image using Blue,Red and Green channels of an image.

   
#### Dataset - 
Link and/or Explanation if generated

#### Novelty - 
1. Use of Gli to compute vegetation areas in the image.
2. Morphological operations to refine detected regions.

   
### Contributors:
1. Pratyusha Gupta (PES1UG22EC214)
2. R Sanjana (PES1UG22EC222)

### Steps:
1. Clone Repository
```git clone https://github.com/Digital-Image-Processing-PES-ECE/project-name.git ```

2. Install Dependencies
```pip install -r requirements.txt```

3. Run the Code
```python main.py (for eg.)```

### Outputs:

* ![image](https://github.com/user-attachments/assets/0e9b5d2a-cf39-4389-93cb-17dcfbc2940e)
*  ![image](https://github.com/user-attachments/assets/06ba5ea9-9ec1-4f05-9184-89cedf669f25)



### References:
1. 1. [Xie, Z., & Chen, J. (2008). *Urban land classification using multi-temporal satellite images*](https://www.sciencedirect.com/science/article/abs/pii/S0034425708001971). *International Journal of Applied Earth Observation and Geoinformation*, 10(3), 278-285.
2. -
   
### Limitations and Future Work: 
