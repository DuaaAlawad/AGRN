library(LEAP)

# input expression data
inputExpr <- read.table('/home/dmalawad/Research/AGRN_tool/benchmarking_methods/data/DREAM5/net4_exp.csv', sep = ",", header = FALSE, row.names = 1) 

geneNames <- rownames(inputExpr)
rownames(inputExpr) <- c()
# Run LEAP's compute Max. Absolute Correlation
# MAC_cutoff is set to zero to get a score for all TFs
# max_lag_prop is set to the max. recommended value from the paper's supplementary file
# Link to paper: https://academic.oup.com/bioinformatics/article/33/5/764/2557687

MAC_results = MAC_counter(data = inputExpr, max_lag_prop=1/3, MAC_cutoff = 0.2, 
                          file_name = "temp", lag_matrix = FALSE, symmetric = FALSE)

# Write output to a file
Gene1 <- geneNames[MAC_results[,'Row gene index']]
Gene2 <- geneNames[MAC_results[,'Column gene index']]
Score <- MAC_results[,'Correlation']
outDF <- data.frame(Gene1, Gene2, Score)
write.table(outDF, '/home/dmalawad/Research/AGRN_tool/benchmarking_methods/infer_net4_exp_LEAP.tsv', sep = "\t", quote = FALSE, row.names = FALSE)

