# Measles Vaccination Data Analysis and Prediction

## Overview
This Jupyter Notebook analyzes measles vaccination data and builds a predictive model to estimate measles cases based on vaccination data. It also explores the impact of increasing vaccination rates on predicted measles cases. This was a final project and was made only for this propose.

## Installation
To run this notebook, you need to have Python installed along with the following libraries:

- pandas
- seaborn
- numpy
- matplotlib
- scikit-learn
- xgboost


## Usage
1. Clone the repository to your local machine.
2. Install the required dependencies using the command provided above.
3. Open the Jupyter Notebook in Jupyter Notebook or JupyterLab.
4. Run each cell sequentially to execute the code.
5. Provide necessary input when prompted.

## Contents
1. Data Preparation:
   - Importing necessary libraries and modules
   - Loading data from Excel files and transferring to SQL database
2. Exploratory Data Analysis:
   - Filtering data for measles cases
   - One-hot encoding categorical variables
3. Model Training and Evaluation:
   - Splitting data into training and testing sets
   - Normalizing features using MinMaxScaler
   - Training an ensemble model using VotingRegressor
   - Evaluating the model's performance on training and testing data
4. Prediction:
   - Modifying vaccination data to simulate a 15% increase in vaccination rates
   - Making predictions on the modified data and saving the results
