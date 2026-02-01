Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Berine")

ABC_political_poll_results <- c(4, 62, 51, 21, 2, 14, 15)

CBS_politcal_poll_results <- c(12, 75, 43, 19, 1, 21, 19)

political_polls_results_df <- data.frame(Name, ABC_political_poll_results, CBS_politcal_poll_results)

political_polls_results_df

is.data.frame(political_polls_results_df)
