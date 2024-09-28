## DSP-LAB
#1.Simulation of Basic Test Signals


#Aim:
To generate continuous and discrete waveforms for the following:
1.	Unit Impulse Signal
2.	Bipolar Pulse Signal
3.	Unipolar Pulse Signal
4.	Ramp Signal
5.	Triangular Signal
6.	Sine Signal
7.	Cosine Signal
8.	Exponential Signal
9.	Unit Step Signal



#Theory:
1.	Unit Impulse Signal:
•	A signal that is zero everywhere except at one point, typically at t=0 where its value is 1.
•	Mathematically δ(t) ={𝟎; 𝒕 ≠ 𝟎}


2.	Bipolar Pulse Signal:
•	A pulse signal that alternates between positive and negative values, usually rectangular in shape. It switches between two constant levels (e.g., -1 and 1) for a defined duration.
•	Mathematically p(t) = A for |t| ≤ τ/2, p(t) = 0 otherwise


3.	 Unipolar Pulse Signal:
•	A pulse signal that alternates between zero and a positive value. It remains at zero for a specified duration and then jumps to a positive constant level (e.g., 0 and 1).
•	Mathematically p(t) = A for |t| ≤ τ/2, p(t) = 0 otherwise (assuming A is positive)
 
4.	 Ramp Signal:
•	A signal that increases linearly with time.
•	Mathematically r(t) ={ 𝒕; 𝒕 ≥ 𝟎}
𝟎; 𝒕 < 𝟎


5.	Triangular Signal:
•	A periodic signal that forms a triangle shape, linearly increasing and decreasing with time, typically between a positive and negative peak.
•	Mathematically: Λ(t) = 1 - |t| for |t| ≤ 1, Λ(t) = 0 otherwise


6.	Sine Signal:
•	A continuous periodic signal. It oscillates smoothly between -1 and 1.
•	Mathematically: y(t)=Asin(2πft)


7.	 Cosine Signal:
•	A continuous periodic signal like the sine wave but phase-shifted by π\2.
•	Mathematically: y(t)=Acos(2πft)


8.	 Exponential Signal:
•	A signal that increases or decreases exponentially with time. The rate of growth or decay is determined by the constant a.
•	Mathematically: e^(at)


9.	 Unit Step Signal:
•	A signal that is zero for all negative time values and one for positive time values.
𝟏; 𝒕 ≥ 𝟎
•	Mathematically u(t) ={	}
𝟎; 𝒕 < 𝟎

#2.Verification of Sampling Theorem

Aim:
To verify Sampling Theorem.

Theory:
The Sampling Theorem, also known as the Nyquist-Shannon Sampling Theorem, states that a 
continuous signal can be completely reconstructed from its samples if the sampling frequency 
is greater than twice the highest frequency present in the signal. This critical frequency is 
known as the Nyquist rate.
fs ≥ 2⋅fmax
Where:
• fs is the sampling frequency (rate at which the signal is sampled),
• fmax is the highest frequency present in the signal.
Applications:
• Digital audio and video processing
• Communication systems
• Image processing
• Medical imaging

#3.Linear Convolution

Aim:
To find linear convolution of following sequences with and without built in function.
• 1. x(n) = [1 2 1 1]
h(n) = [1 1 1 1]
• 2. x(n) = [1 2 1 2]
h(n) = [3 2 1 2]

Theory:
Linear convolution is a mathematical operation used to combine two signals to produce a third 
signal. It's a fundamental operation in signal processing and systems theory.
Mathematical Definition:
Given two signals, x(t) and h(t), their linear convolution is defined as:
y(t) = x(t) * h(t) = ∫ 𝐱(𝛕)𝐡(𝐭 − 𝛕) 𝐝𝛕 ∞
−∞
Applications:
Filtering: Convolution is used to filter signals, removing unwanted frequencies or noise.
System Analysis: The impulse response of a system completely characterizes its behaviour, 
and convolution can be used to determine the output of the system given a known input.
Image Processing: Convolution is used for tasks like edge detection, blurring, and sharpening 
images.

#4.Circular Convolution

Aim:
To find circular convolution
a. Using FFT and IFFT.
b. Using Concentric Circle Method.
c. Using Matrix Method.

Theory:
Circular convolution is a mathematical operation that is like linear convolution but is performed 
in a periodic or circular manner. This is particularly useful in discrete-time signal processing 
where signals are often represented as periodic sequences.
Mathematical Definition:
Given two periodic sequences x[n] and h[n], their circular convolution is defined as:
y[n] = (x[n] ⊛ h[n]) = ∑_{k=0} ^{N-1} x[k]h[(n-k) mod N]
Applications:
• Discrete-Time Filtering: Circular convolution is used for filtering discrete-time signals.
• Digital Signal Processing: It's a fundamental operation in many digital signal 
processing algorithms.
• Cyclic Convolution: In certain applications, such as cyclic prefix OFDM, circular 
convolution is used to simplify the implementation of linear convolution.

#5.Linear Convolution using Circular Convolution and Vice 
versa

Aim:
1. To perform Linear Convolution using Circular Convolution.
2. To perform Circular Convolution using Linear Convolution.
   
Theory:
Performing Linear Convolution Using Circular Convolution
Method:
1. Zero-Padding:
o Pad both sequences x[n] and h[n] with zeros to a length of at least 2N-1, where 
N is the maximum length of the two sequences. This ensures that the circular 
convolution will not wrap around and introduce artificial periodicity.
2. Circular Convolution:
o Perform circular convolution on the zero-padded sequences.
3. Truncation:
o Truncate the result of the circular convolution to the length N1 + N2 - 1, where 
N1 and N2 are the lengths of the original sequences x[n] and h[n], respectively.
Example:
Consider the sequences x[n] = [1, 2, 3] and h[n] = [4, 5].
1. Zero-padding:
o Pad x[n] to [1, 2, 3, 0, 0] and h[n] to [4, 5, 0, 0].
2. Circular Convolution:
o Perform circular convolution on the zero-padded sequences. The result will be 
[4, 13, 21, 15, 0].
3. Truncation:
o Truncate the result to [4, 13, 21, 15].
This result is the same as the linear convolution of x[n] and h[n].
Performing Circular Convolution Using Linear Convolution
Method:
1. Zero-Padding:
o Pad both sequences x[n] and h[n] to a length of at least 2N-1, where N is the 
maximum length of the two sequences.
2. Linear Convolution:
o Perform linear convolution on the zero-padded sequences.
3. Modulus Operation:
o Apply the modulus operation to the indices of the linear convolution result, 
using the period N. This effectively wraps around the ends of the sequence, 
making it circular.
Example:
Using the same sequences as before, x[n] = [1, 2, 3] and h[n] = [4, 5].
1. Zero-padding:
o Pad x[n] to [1, 2, 3, 0, 0] and h[n] to [4, 5, 0, 0].
2. Linear Convolution:
o Perform linear convolution. The result will be [4, 13, 21, 15, 0].
3. Modulus Operation:
o Apply the modulus operation to the indices: [4, 13, 21, 15, 0] becomes [4, 13, 
2, 15, 0]
