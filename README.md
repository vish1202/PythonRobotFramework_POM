# Run Login Tests:
robot .\TestCases\LoginTest.robot

# Run Add to cart Tests:
robot '.\TestCases\Add To Cart.robot'     

# Run Parallel Tests and generate output in Results folder
pabot --processes 2 --outputdir Results "TestCases\Add To Cart.robot"

# Install Dependencies
File > Settings > Interpreter:

robotframework

robotframework-pabot

robotframework-pythonlibcore

robotframework-seleniumlibrary

robotframework-stacktrace

selenium

# Plugins
Hyper RobotFramework Support
