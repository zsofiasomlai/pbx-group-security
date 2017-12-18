---
Title: SOC Engineer Challenge
Date : 2017-12-11
---
# How to apply

The following challenges should take no longer than 30 - 45 minutes. Complete the challenges and submit your answer using a github repo. Once you have documented your solution, send a link to your repo to project-cx@photobox.com.


## SOC Engineer Challenges


### Theoretical Exercise
#### Evaluation rules of engagement
##### Objective: Understand and contain issue(s) without any pushes to production

##### Pick up to three of the scenarios provided;

* Provide the answer in an analog format (paper or whiteboard)
* You can use any technology you want (ideally ones you have experience with) and any Group Security team size
* Describe what you would do and how you would act (ideally as diagram)
* Who would you talk to?
* What actions would you take to contain and remediate issue(s)?

##### Resources and Technologies available:

* Techops, Webops and Dev teams
* Slack, Jira, Confluence, ELK, Grafana, Nagios, Akamai, AWS, Cisco Firewalls, Landeks and DarkTrace

#### NOTE: Issues can NOT be remediated in hours

##### Monday - AWS Root Key

A legacy SVN server is found to be exposed on the internet
Review of the source code identifies a number of  secrets:

- Usernames and passwords of production DBs and  Servers 
- AWS key
Upon review, the AWS key is active and has root  privileges

##### Tuesday	- DarkTrace Alert
DarkTrace (AI based network IDS) raises an alert caused by the download of an unknown  executable by a user with administrator privileges. Further analysis of DarkTrace logs for affected device shows unusual network activity.

Describe how you would proceed to achieve the same understanding in TechOps, DevOps, Business and Management.

- Bonus points for mapping what could be the possible malicious and non-malicious (benign) root cause of this incident?

##### Wednesday	- Botnet attack
A distributed botnet (from multiple IPs) is hitting one  of our websites and is creating new accounts at a  rate of 4 per second.

- Each hour 15k new accounts are created
- Usernames contain an unusual ‘fiction based’ text  (i.e. from books)
- Each new account has some impact on the back-  end due to automated actions and workflows (i.e.  auto creation of albums and insertion in to CRM  tools)

##### Thursday - Image download
A vulnerability is descovered in an image server that allows the download of user’s images from live servers. This was created by dev team to help debug problems in production and factories.
Key questions are:

- Who is using this today?
- Who knows about this?
- Has this vulnerability been exploited?

Bonus points for providing ‘GDPR implications’ mapping of this  vulnerability/incident

##### Friday - Log analysis
You are given 5 GB, 50 GB or 500 GB of nginx server  logs (pick the one you are most comfortable handling). These logs cover a period where we know a high level vulnerability was exposed.

Your job is to:
a) build an AWS based infrastructure to  consume, query and visualise the data
b) find proof if that vulnerability has been  exploited (and if so, by whom)

Explain the kind of dashboard that you would  create and how you would use them to answer the  key question(s)

### Practical Exercise

#### Task 1	
Use a free log service (loggly) or ELK stack (elastic) to create dashboards

#### Task 2	
Create EC2 instance or container instances and load with a vulnerable website

- Generate traffic (manually or with tool)
- Create cloudwatch alerts & cloudtrail dashboards that show alerts

#### Task 3	
Create Lambda function to;

- Show a list of running instances (all regions and metadata)
- Stop EC2 instances that have not been accessed for a period of time or have a low CPU usage

#### Task 4	
Setup an Elastic (ELK) Stack, feed logs from task 3 and create a dashboard

#### Task 5	
Create all tasks via cloudformation and run from CLI

- Use click templates or CLI

### Bonus Exercise
Tell us about your ideal challenge - let us know what your ideal challenge to showcase your skills looks like and complete this challenge. The only rule is that this should be challenging!
