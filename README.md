# Housing Price Modeling in R

## Project Overview
This project examines relationships between housing characteristics and sale prices using multiple regression techniques in R. The analysis evaluates three models: a multiple regression model with quantitative and categorical predictors, a complete second-order model with linear, squared, and interaction terms, and a reduced model without the squared terms.
The models are evaluated using correlation analysis, coefficients of determination, significance tests, residual diagnostics, prediction intervals, and a nested-model F-test.

## Analysis

The project includes three regression models:

1. A multiple regression model predicting home prices using living area, upper-level living area, age, number of bathrooms, and view category.
2. A complete second-order regression model using school rating, crime rate, their interaction, and quadratic terms for both predictors.
3. A reduced regression model using school rating, crime rate, and their interaction, fitted for comparison with the complete second-order model.

The analysis included:

- Scatterplots and correlation analysis
- Individual coefficient t-tests
- Overall regression F-tests
- R-squared and adjusted R-squared
- Residual-versus-fitted plots
- Normal probability plots of residuals
- A nested-model F-test
- Predicted home prices
- Confidence intervals for average home prices
- Prediction intervals for individual homes

## Key Findings
- The first model used living area, upper-level area, age, bathrooms, and property view and explained approximately 60.3% of the observed variation in sale prices.
- The complete second-order model used school rating and crime rate and explained approximately 80.9% of the observed variation in sale prices.
- The nested-model F-test showed that adding the squared terms significantly improved model fit compared with the reduced model.
- Residual diagnostics indicated heteroscedasticity and some departures from normality, so the models would require additional refinement and validation before practical deployment.

## Repository Files
- [`housing_price_code.r`](housing_price_analysis.r) - R code used for data preparation, visualization, regression modeling, diagnostics, predictions, and model comparison
- [`housing_price_report.pdf`](housing_price_report.pdf) - Technical summary report containing the analysis, results, visualizations, interpretations, and limitations
- [`housing_price_notebook.html`](housing_price_notebook.html) - HTML notebook preserving the complete code and original outputs

## Tools
- R
- Base R statistical and visualization functions
- `lm()` for regression modeling
- `predict()` for confidence and prediction intervals
- `anova()` for nested-model comparison

## Acknowledgment
This project was originally completed as part of an academic course. The R code, analysis, interpretations, and portfolio revisions are my own.
