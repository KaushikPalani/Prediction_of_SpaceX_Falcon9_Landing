 
# Predicting the success of SpaceX Falcon 9 rocket landing using Machine learning and Data Science - Capstone

Space X is evolving to be the most successful company in the technology of reusing the rockets and therby reducing the cost. This capstone project tries to predict the landing of falcon 9 reusable rocket without rocket science and just based on available data and Machine learning.   

The project involves understanding data collection, pre-processing and engineering and the application of ML. All the processes are performed on **IBM Watson studio cloud platform and IBM Db2 SQL cloud database**.

This includes
 - Data Collection through API
 - Data Collection through Web Scraping 
 - Data Wrangling 
 - Exploratory Data Analysis using SQL
 - Exploratory Data Analysis using visualization 
 - Machine Learning Prediction 
 - Comparison between the used Machine Learning Models 

The following ML models were deployed and compared with. Various training parameters (scikit-learn) were pipelined into and the best were chosen with cross validation. 
 - Logistic Regression 
   - {'C': 0.01, 'penalty': 'l2', 'solver': 'lbfgs'}
 - Support Vector Machine
   - {'C': 1.0, 'gamma': 0.03162277660168379, 'kernel': 'sigmoid'}
 - Decision Tree Classifier
   - {'criterion': 'gini', 'max_depth': 12, 'max_features': 'auto', 'min_samples_leaf': 4, 'min_samples_split': 2, 'splitter': 'best'} 
 - K-Nearest Neighbor
   - {'algorithm': 'auto', 'n_neighbors': 10, 'p': 1}

Though all the models were predicting good, Decision Tree Classifier had the highest score for the test set with 88% accuracy. I believe, Neural Network models might improve the accuracy more. 
References and Sources 
 - https://www.edx.org/search?tab=course - Data Science and Machine Learning Capstone 
 
