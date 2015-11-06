# Get the training data provided by the challenge.
Training.Data <- read.csv(
  "training_data.csv"
)
# Add a column of data which expresses the interval over which each
# donor has donated.
Training.Data <- data.frame(
  Training.Data,
  Months.Elapsed =
    Training.Data$Months.since.First.Donation
    - Training.Data$Months.since.Last.Donation
    + 1
)
# Add a column which expresses the rate at which each donor donated,
# for the period over which they have donated.
Training.Data <- data.frame(
  Training.Data,
  Donations.per.Month =
    Training.Data$Number.of.Donations
    / Training.Data$Months.Elapsed
)
# Output raw data.
Training.Data
