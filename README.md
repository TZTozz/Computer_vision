# Computer_vision
A collection of four core computer vision implementations developed in MATLAB, covering the pipeline from low-level image processing to geometric vision and temporal motion analysis.
# 📂 Repository Structure
## Image Filtering & Noise Reduction
This module focuses on the restoration of images corrupted by stochastic processes. It explores the trade-off between noise suppression and the preservation of high-frequency details (edges).
Detailed documentation and analysis can be found in the report inside the folder.

## Feature Detection & Matching (NCC & HCD)
The foundation of object recognition and image stitching. This project implements algorithms to find and correlate unique "interest points" across different views. 
- Harris Corner Detector (HCD): Implementation of the auto-correlation matrix to identify corners based on eigenvalues.
- Normalized Cross-Correlation (NCC): A matching metric used to find correspondences between feature descriptors, providing robustness against global intensity shifts.
Detailed documentation and analysis can be found in the report inside the folder.

## Epipolar Geometry (8-Point Algorithm & RANSAC)
This project estimates the geometric constraints between two camera views.
- 8-Point Algorithm: Construction of the design matrix to solve for the Fundamental Matrix ($F$).
- RANSAC (Random Sample Consensus): A robust estimation framework used to eliminate "outlier" correspondences caused by false NCC matches, ensuring a clean estimation of epipolar lines.
Detailed documentation and analysis can be found in the report inside the folder.

## Motion Analysis & Target Tracking
Change Detection: Implementation of background subtraction and frame differencing.
- Optical Flow: Analysis of pixel velocity fields between consecutive frames.
- Target Tracker: A manual-selection tracker that maintains the identity of a specific object across a video stream using motion cues and Kalman filter
