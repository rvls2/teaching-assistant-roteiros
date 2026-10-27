Feature: Response time report

  As a professor
  I want to view information about students' response times
  so that I can analyze their performance in the scripts

  Scenario: Calculate statistics for students' response times and grades
    Given the student "Ana" has the grade "9.0" and the responde time "10 minutes"
    And the student "Bruno" has the grade "7.0" and the responde time "20 minutes"
    And the student "Carla" has the grade "5.0" and the responde time "30 minutes"
    When the professor requests the statistical report
    Then the average response time is "20 minutes"
    And the average grade is "7.0"
    And the standard deviation of response times is "8.16 minutes"
    And the standard deviation of grades is "1.63"
  
  Scenario: Identify the negative correlation between response time and grade
    Given the student "Ana" has the grade "9.0" and the responde time "10 minutes"
    And the student "Bruno" has the grade "7.0" and the responde time "20 minutes"
    And the student "Carla" has the grade "5.0" and the responde time "30 minutes"
    When the professor requests the correlation analysis
    Then the correlatoin coefficient is "-1.0"
    And the report indicates a perfect negative correlation

  Scenario: Identify a positive correlation between response time and grade
    Given the student "Ana" has the grade "5.0" and the responde time "10 minutes"
    And the student "Bruno" has the grade "7.0" and the responde time "20 minutes"
    And the student "Carla" has the grade "9.0" and the responde time "30 minutes"
    When the professor requests the correlation analysis
    Then the correlation coefficient is "1.0"
    And the report indicates a perfect positive correlation

  Scenario: Identify no correlation between response time and grade
    Given the student "Ana" has the grade "5.0" and the responde time "10 minutes"
    And the student "Bruno" has the grade "9.0" and the responde time "20 minutes"
    And the student "Carla" has the grade "7.0" and the responde time "30 minutes"
    When the professor requests the correlation analysis
    Then the correlation coefficient is "0.5"
    And the report indicates no linear correlation

   Scenario: Handle insufficient data for correlation
    Given the student "Ana" has the grade "9.0" and the responde time "10 minutes"
    When the professor requests the correlation analysis
    Then the system displays "Insufficient data to calculate correlation"

    
