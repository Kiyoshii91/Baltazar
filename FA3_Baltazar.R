# Sample data
scores <- c(88, 45, 53, 86, 33, 86, 85, 30, 89, 53, 41, 96, 56, 38, 62,
            71, 51, 86, 68, 29, 28, 47, 33, 37, 25, 36, 33, 94, 73, 46,
            42, 34, 79, 72, 88, 99, 82, 62, 57, 42, 28, 55, 67, 62, 60,
            96, 61, 57, 75, 93, 34, 75, 53, 32, 28, 73, 51, 69, 91, 35)

# Count valid scores
valid_count <- length(scores)

# Calculate Mean, Median, Minimum, Maximum, Variance, and Standard Deviation
mean_score <- mean(scores)
median_score <- median(scores)
min_score <- min(scores)
max_score <- max(scores)
variance <- var(scores)
std_deviation <- sd(scores)

# Calculate Mode (custom function since R doesn't have a built-in mode function)
get_mode <- function(x) {
  unique_x <- unique(x)
  unique_x[which.max(tabulate(match(x, unique_x)))]
}
mode_score <- get_mode(scores)

# Calculate quartiles (Q1, Q2, Q3)
q1 <- quantile(scores, 0.25)
q2 <- quantile(scores, 0.5)
q3 <- quantile(scores, 0.75)

# Calculate D9 (90th percentile)
d9 <- quantile(scores, 0.9)

# Calculate P95 (95th percentile)
p95 <- quantile(scores, 0.95)

# Create a data frame to store the results
results <- data.frame(
  Statistic = c("Valid", "Mean", "Median", "Mode", "Minimum", "Maximum", "Variance", "Std. Deviation",
                "Q1", "Q2", "Q3", "D9", "P95"),
  Value = c(valid_count, mean_score, median_score, mode_score, min_score, max_score, variance, std_deviation,
            q1, q2, q3, d9, p95)
)

# Print the table
print(results)
