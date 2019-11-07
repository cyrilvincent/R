mat2 <- matrix(data=1:9, nrow = 3, ncol = 3, byrow = T)
print(mat2)
print(mat2 * 2)
print(cos(mat2))
print(cos(mat2) + mat2)
print(t(mat2))

mat3 <- matrix(data=1:4, nrow = 2, ncol = 2, byrow = T)
print(mat3)
mat4 = solve(mat3)
print(mat4)

complex = 1+2i
(0+1i)**2 # -1
Re(complex) # 1
Im(complex) # 2

v1 = c(0,1,0,0,0,0,0,0,0,0)
par(mfrow=c(2,2))
plot(v1)
freq = fft(v1)
print(freq)
plot(Re(freq))
plot(Im(freq))
par(mfrow=c(1,1))