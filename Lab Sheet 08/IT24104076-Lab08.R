setwd("E:\\SLIIT\\Year 2\\probability and statistics\\IT24104076")
getwd()

data<-read.table("Exercise - LaptopsWeights.txt",header = TRUE)
fix(data)
attach(data)

##Question 01
##population mean and population diviation
popmn<-mean(Weight.kg.)
popvar<-var(Weight.kg.)

cat("Population mean: ",popmn)
cat("Population variance: ",popvar)

##Question 02
set.seed(123)  # reproducibility

sample_means <- numeric(25)  # store means
sample_sds <- numeric(25)    # store standard deviations

for (i in 1:25) {
  sample_data <- sample(Weight.kg., size = 6, replace = TRUE)
  sample_means[i] <- mean(sample_data)
  sample_sds[i] <- sd(sample_data)
}

# Print results
sample_means
sample_sds

##Question 03
mean_of_sample_means <- mean(sample_means)
sd_of_sample_means <- sd(sample_means)

cat("Mean of 25 sample means: ", mean_of_sample_means)
cat("Standard deviation of 25 sample means: ", sd_of_sample_means)
