# Use anofficiial JMeter image as the base image
FROM justb4/jmeter

# Add your JMeter test files to the container
COPY SampleAPITest_2mins.jmx/test/

# Set the entry point to run JMeter
ENTRYPOINT["jmeter","-n","-t","/test/SampleAPITest_2mins.jmx"]
