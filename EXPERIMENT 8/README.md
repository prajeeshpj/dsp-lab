# Theory
1.	Overlap-Add Method<br>

This procedure cuts the signal up into equal length segments with no overlap. Then it zero-pads the segments and takes the DFT of the segments. Part of the convolution result corresponds to the circular convolution. The tails that do not correspond to the circular convolution are added to the adjoining tail of the previous and subsequent sequence. This addition results in the aliasing that occurs in circular convolution

<br>  2.	Overlap-Save Method<br>

This procedure cuts the signal up into equal length segments with some overlap. Then it takes the DFT of the segments and saves the parts of the convolution that correspond to the circular convolution. Because there are overlapping sections, it is like the input is copied therefore there is not lost information in throwing away parts of the linear convolution.

# Observation
![image](https://github.com/user-attachments/assets/8df114fd-7549-45f3-90d7-67de9bc39199)

-> Overlap Save 
![image](https://github.com/user-attachments/assets/0adbdff2-c3b0-4edc-88a1-200be7590c76)



