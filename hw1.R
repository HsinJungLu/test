summary <- function(input_path, output_path) {
  data <- read.csv(input_path)
  max_weight <- round(max(data$weight), digits = 2)
  max_height <- round(max(data$height), digits = 2)
  input_filename <- basename(input_path) 
  input_number <- sub(".*(\\d+).*", "\\1", input_filename)
  output_name <- paste0("input", input_number)
  result <- data.frame(set = output_name, weight = max_weight, height = max_height)
  write.csv(result, file = output_path, row.names = FALSE, quote = FALSE)
  print(result)
}

#summary("input1.csv","output1.csv")
#summary("input2.csv","output2.csv")
#summary("input3.csv","output3.csv")