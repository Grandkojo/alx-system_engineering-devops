HBNB Hotel Management System Postmortem
Issue Summary:

Duration of the Outage:
Start Time: January 15, 2023, 08:00 AM GMT
End Time: January 15, 2023, 11:30 AM GMT

Impact:

The booking service was down, preventing users from making reservations.
Users experienced slow response times on the website.
Approximately 30% of users were affected.

Root Cause:
The outage was caused by a database connection issue. An unexpected surge in traffic overwhelmed the database server, leading to a connection bottleneck.

Timeline:

08:00 AM GMT: Issue detected through monitoring alerts indicating a sudden spike in database connection errors.

08:15 AM GMT: Investigation initiated. Assumed the issue might be related to increased user activity due to a marketing campaign.

08:30 AM GMT: Misleading assumption. Further investigation revealed the database server was under stress due to a large number of simultaneous connections.

09:30 AM GMT: I team identified the root cause - a misconfiguration in the database connection pool settings.

10:00 AM GMT: Resolution began with the correction of the misconfigured connection pool settings.

11:30 AM GMT: Service fully restored. Monitoring indicated a decrease in database connection errors.

Root Cause and Resolution:

Root Cause:
The root cause of the issue was a misconfiguration in the database connection pool settings. The default settings were insufficient to handle the sudden increase in user traffic, resulting in a bottleneck and connection errors.

Resolution:
The issue was resolved by adjusting the database connection pool settings to accommodate a higher number of simultaneous connections. Additionally, the team implemented proactive monitoring to detect and prevent similar issues in the future.

Corrective and Preventative Measures:

Things to be Improved/Fixed:

Automated Scaling: Implement an automated scaling solution for the database to handle traffic spikes dynamically.

Load Testing: Conduct regular load testing to identify system limitations and optimize configurations accordingly.

Documentation Review: Review and update the documentation for database configuration settings to avoid misconfigurations in the future.

Tasks to Address the Issue:

Implement Automated Scaling: Configure auto-scaling for the database to dynamically adjust resources based on demand.

Regular Load Testing: Schedule regular load testing sessions to simulate traffic spikes and optimize configurations.

Documentation Update: Review and update documentation for database configuration settings, ensuring accuracy and clarity.

In conclusion, the HBNB hotel management system experienced a brief but impactful outage due to a database connection issue. The incident highlighted the importance of robust monitoring, quick detection, and proactive resolution strategies. By implementing automated scaling, conducting regular load testing, and maintaining accurate documentation, the team aims to enhance the system's resilience and prevent similar issues in the future.


