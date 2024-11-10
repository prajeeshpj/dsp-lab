# Theory
### Linearity

If $\text{DFT}\{x_1(n)\} = X_1(k)$ and $\text{DFT}\{x_2(n)\} = X_2(k)$

$$
\text{DFT}\{a_1 x_1(n) + a_2 x_2(n)\} = a_1 X_1(k) + a_2 X_2(k)
$$

### Circular Convolution
Convolution property defined as

$$
x_1(n) * x_2(n) = \sum_{m=0}^{N-1} x_1(m) x_2((n-m) \mod N)
$$

The Convolution Property of DFT says that the DFT of circular convolution of two sequences is equivalent to the product of their individual DFTs. Let,

If $\text{DFT}\{x_1(n)\} = X_1(k)$ and $\text{DFT}\{x_2(n)\} = X_2(k)$

then by convolution property

$$
\text{DFT}\{x_1(n) \circledast x_2(n)\} = X_1(k) \cdot X_2(k)
$$

### Multiplication
If $\text{DFT}\{x_1(n)\} = X_1(k)$ then

$$
\text{DFT}\{x_1(n) \cdot x_2(n)\} = \frac{1}{N} [X_1(k) \odot X_2(k)]
$$

### Parseval's Theorem
If $\text{DFT}\{x_1(n)\} = X_1(k)$ and $\text{DFT}\{x_2(n)\} = X_2(k)$$

then by Parseval’s Relation

$$
\sum_{n=0}^{N-1} x_1(n) x_2^*(n) = \frac{1}{N} \sum_{k=0}^{N-1} X_1(k) X_2^*(k)
$$

# Observatiom

![Screenshot 2024-11-09 232947](https://github.com/user-attachments/assets/017699ef-3758-4e19-87c8-9878903523f1)

