_These answers are from a set of sample data added to Kibana and are here merely for demonstration purposes._

- In the last 7 days, how many unique visitors were located in India?
![VisitorsFromIndia](https://user-images.githubusercontent.com/96896057/167231207-670880d5-5560-4cac-9019-48f28824d366.png)

- In the last 24 hours, of the visitors from China, how many were using Mac OSX? 
![VisitorsFromChinaOSX](https://user-images.githubusercontent.com/96896057/167231311-417b7170-f05a-4fa2-96d1-1030d8d95d2c.png)


- In the last 2 days, what percentage of visitors received 404 errors? How about 503 errors? 
![ErrorCodesPercentage](https://user-images.githubusercontent.com/96896057/167231340-b3f306d9-4beb-4496-8839-cf0fe7128921.png)

- In the last 7 days, what country produced the majority of the traffic on the website? 
![RequestsByCountry](https://user-images.githubusercontent.com/96896057/167231360-34736bfc-6508-4906-b014-007ab40e97df.png)

- Of the traffic that's coming from that country, what time of day had the highest amount of activity? 
![HighestHitsByHour](https://user-images.githubusercontent.com/96896057/167231435-ae35860c-924c-4fbd-a200-2124b31cfa55.png)


- List all the types of downloaded files that have been identified for the last 7 days, along with a short description of each file type (use Google if you aren't sure about a particular file type).
css-A css is used to style and layout webpages.
deb-A deb is a Debian archive file which contains the executable files and documentation associated with the particular Linux image it is being used to install. 
gz-A gz file is a archive compressed using gzip compression.
rpm-A rpm is a Red Hat Package Manager file that's used to store and uninstall packages on Linux.
zip-A zip file is a compressed file which makes the file size smaller and easier to transfer between computers or servers.

Now that you have a feel for the data, Let's dive a bit deeper. Look at the chart that shows Unique Visitors Vs. Average Bytes.


- Locate the time frame in the last 7 days with the most amount of bytes (activity).
![UniqueVisitorstoAverageBytes](https://user-images.githubusercontent.com/96896057/167231829-c0526620-4903-4d37-81dc-e89595b06936.png)

In your own words, is there anything that seems potentially strange about this activity?
Filter the data by this event.


- What is the timestamp for this event?
- What kind of file was downloaded?
- From what country did this activity originate?
- What HTTP response codes were encountered by this visitor?
- Switch to the Kibana Discover page to see more details about this activity.


- What is the source IP address of this activity?
- What are the geo coordinates of this activity?
- What OS was the source machine running?
- What is the full URL that was accessed?
- From what website did the visitor's traffic originate?
- Finish your investigation with a short overview of your insights.


- What do you think the user was doing?
- Was the file they downloaded malicious? If not, what is the file used for?
- Is there anything that seems suspicious about this activity?
- Is any of the traffic you inspected potentially outside of compliance guidlines?
