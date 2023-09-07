# Sample data
scores <- c(88, 45, 53, 86, 33, 86, 85, 30, 89, 53, 41, 96, 56, 38, 62,
            71, 51, 86, 68, 29, 28, 47, 33, 37, 25, 36, 33, 94, 73, 46,
            42, 34, 79, 72, 88, 99, 82, 62, 57, 42, 28, 55, 67, 62, 60,
            96, 61, 57, 75, 93, 34, 75, 53, 32, 28, 73, 51, 69, 91, 35)

# Calculate quartiles (Q1, Q2, Q3)
Q1 <- quantile(scores, 0.25)
Q2 <- quantile(scores, 0.5)
Q3 <- quantile(scores, 0.75)

# Calculate the 90th percentile (P90) and 95th percentile (P95)
D9 <- quantile(scores, 0.90)
P95 <- quantile(scores, 0.95)

# Display the results
print(paste(Q1))
print(paste(Q2))
print(paste(Q3))
print(paste(D9))
print(paste(P95))