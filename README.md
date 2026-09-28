# Housing Price Modeling in R

## Project Overview
This project examines relationships between housing characteristics and sale prices using multiple regression techniques in R. The analysis evaluates three models: a multiple regression model with quantitative and categorical predictors, a complete second-order model with linear, squared, and interaction terms, and a reduced model without the squared terms.
The models are evaluated using correlation analysis, coefficients of determination, significance tests, residual diagnostics, prediction intervals, and a nested-model F-test.

## Methods
- Multiple linear regression with quantitative and categorical predictors
- Interaction effects
- Quadratic regression
- Pearson correlation analysis
- Residual and normal Q-Q diagnostics
- Confidence and prediction intervals
- Nested-model F-test

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
