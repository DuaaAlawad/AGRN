#   AGRN: Accurate Gene Regulatory Network inference using ensemble machine learning methods 


### Table of Content

- [Getting Started](#getting-started)
- [Dataset](#Dataset)
- [Prerequisites](#Prerequisites)
- [Download and install code](#download-and-install-code)
- [Demo](#demo)

  
# Getting Started
 

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. 

 ## Dataset
The dataset can be found in the dataset directory. Both DREAM4 and DREAM5 datasets are inside the AGRN_tool.zip tool

the data which have been used in this paper is from DREAM4 and DREAM5 challenges.

In **DREAM4 challenge**, the dataset  comprises two main files:

    1-  Gene expression data
    2-  GoldStandardard for each network


|    Network    |    Organism      | # Genes | # Chips |
| ------------- | ---------------- | --------|---------|
|    Network 1  |   In silico      |   100   |   100   |
|    Network 2  |   In silico      |   100   |   100   |
|    Network 3  |   In silico      |   100   |   100   |
|    Network 4  |   In silico      |   100   |   100   |
|    Network 5  |   In silico      |   100   |   100   |








In **DREAM5 challenge**, the dataset  comprises three main files:

    1-  Gene expression data
    2-  GoldStandardard for each network
    3-  List of  transcription factors (TFs)


|    Network    |    Organism      | # TranscFactors  | # Genes | # Chips |
| ------------- | ---------------- | -----------------| --------|---------|
|    Network 1  |   In silico      |        195       |   1643  |   805   |
|    Network 2  |   S.aureus       |        99        |   2810  |   160   |
|    Network 3  |   E. coli        |        334       |   4511  |   805   |
|    Network 4  |   S. cerevisiae  |        333       |   5950  |   536   |


## Prerequisites

You would need to install the following software before replicating this framework in your local or server machine.

 ```
Python version 3.7.4

Poetry version 1.1.12

You can install poetry by running the following command:

curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -

To configure your current shell run `source $HOME/.poetry/env`


```
  
## Download and install code

- Retrieve the code

```
git clone https://github.com/DuaaAlawad/AGRN.git

```

## Demo

To run the program, first, set the input path in the input.txt file. Here is a sample input file form DREAM5 E-coli Dataset.

```
./Dataset/DREAM5/training data/Network 1 - in silico/net1_expression_data.tsv
./Dataset/DREAM5/test data/DREAM5_NetworkInference_GoldStandard_Network1 - in silico.tsv
./Dataset/DREAM5/training data/Network 1 - in silico/net1_transcription_factors.tsv
./Dataset/DREAM5/training data/Network 1 - in silico/net1_gene_ids.tsv
```


Then, run following python command from the root directory.

```
cd AGRN
poetry install
poetry run python AGRN.py

```

- Finally, check **output** folder for results. The output directory contains importance scores from ETR, SVR and RFR in csv files. The OutputResults.txt file shows the results in AUROC and AUPR.

--------------------------------------------------------------------------------

To run AGRN using your own data, you should set the input path in the input.txt file. 
- the first line in the input file: ***expression_data.csv** represents the row as samples and the column as genes.
- the second line in the input file: ***GoldStandard.csv** represents the first column as a transcription factor, the second column as a target gene, and the third column refer to 1  as an interaction pair and 0 as a non-interaction pair.
- the third line in the input file: ***transcription_factors.csv** contains one column which represents the transcription factors.

## Authors

Duaa Mohammad Alawad, Md Wasi Ul Kabir, Ataur Katebi, Md Tamjidul Hoque. For any issue please contact: Md Tamjidul Hoque, thoque@uno.edu 
