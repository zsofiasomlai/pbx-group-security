---
title   : Incident handling processes @ Photobox
banner  : /img/blog/Photoboxgroup_SecurityBlogArticle_squareRGB.png
date    : 2018-09-15
images  : ["img/Photoboxgroup_Incident_Handling_Processes_SquareRGB.jpg"]
author  : Jon Hawes
---

## Incident handling processes @ Photobox

This weeks musing is born out of some small degree of pain. At least it was week 3 in my new role as Head of Detect before I had to deal with a flurry of incidents, a period that is currently being referred to as 'the baptism of fire'. As I didn't burn, I guess by Medieval standards this means I am (or am not) a witch, depending on your point of view.

I was very fortunate that the security team had already done a lot of fantastic work to establish a process for incident handling that formalised how information capture around incidents is done (yes, it's stored in Jira; did I mention we use Jira a lot?). That info is then consumed via a nice neat page in Confluence where you can see all the task tickets for the incident, who owns them, what priority they have etc.

In my first few weeks I'd been getting up to speed with all this, and had a few process improvements that I wanted to implement. As it happened, the incidents were a catalyst to try some of those out under live fire, and a few more ideas were born as a result. So, here's how we do incident handling ...

First: a few terms. If you are not familiar with Jira there are a few bits of taxonomy worth mentioning. In JIra we have a Group Security Project. In that Project we have a number of Ticket Types. One is a Security Event. One is a Security Incident. One is an Epic (this is generic, whereas the others are incident specific). The last one is an Incident Task. These are the core entities we deal with during an incident and we link them together.

Below is what the 'admin' process looks like of creating tickets. In stage 2 we create a Security Event. In stage 4 we create a Security Incident, which is linked to Security Event using 'is caused by'. In stage 5 we create one or more Investigation Epics (these are threads we need to investigate as part of the Incident), which are linked to Security Incident as 'caused by'. Then in stage 6 we create a bunch of Tasks, which are 'caused by' the Epic they related to.

![](/img/blog/jon/Musings%201.jpg)

So, let's look at stage 1 and 2 in a bit more detail.

In stage 1, there are 3 ways a security event can be identified. First, a system alert (something we, or an internal team has seen). Second, an employee who has information about something we need to look into. Third, someone external (we run a bug bounty, so researchers get in touch quite a bit).

We capture this info, and a ton more detail in stage 2 (see sketch below). At this point, we may or may not be sure that we have an incident on our hands. But we still record the initial information as an event. This is because

  1. it's important we have this info if we are dealing with an incident, and often incidents lack information to ask really good questions at the outset that can save time later on; and
  2. by capturing the information here (we force all these fields as 'must complete in the Jira ticket) we can automate the creation of an incident without someone having to manually review that there is good information about the scope of the information we have at the start of the incident.

It might seem like stage 2 requires a lot of information, but almost all these fields are a single click or a multi-select. Only the summary requires free text. That means you can run through the whole form in about 90 seconds. For 'Security Scope' we go very simple (we use the Cyber Defence Matrix categories of User, Device, App, Data, Network). For 'System Type' we have a menu made up of things like 'Corporate Network', 'AWS', 'SaaS App'.

![](/img/blog/jon/Musings%202.jpg)

Ok, so we now move into triage. This kicks off a basic workflow in Jira for the status of the Ticket (to do, in progress etc). The outcome will be that we escalate as a Sev 1-3, or we close as a false positive. Here are our guides for Sev 1-3

#### Sev1 conditions :

 - A breach (compromise or theft) of a business asset
 - A sustained attack targeting critical systems
 - A system compromise with the potential to impact multiple other systems
 - Realised, or high likelihood of, severe impact and consequences to current or / and future business targets and objectives

#### Sev2 conditions :

 - Technology compromise that needs urgent remediation to limit blast radius
 - Attack that requires increased monitoring and vigilance
 - Exposure of critical or sensitive systems or business assets with no known breach
 - Realised, or moderate likelihood of, impact consequences to BAU activities and projects

#### Sev3 conditions :

 - Attack detected attack that requires monitoring but no additional vigilance from BAU
 - Degradation of security tooling or security-relevant capability or process, which impacts ability to prevent or detect threat activity if left unresolved
 - Realised, or low likelihood of, business impact

![](/img/blog/jon/Musings%203.jpg)

Now come some more admin-y bits. If we escalate, we create an Incident ticket, then an Epic ticket, then a bunch of Task tickets. We generally have someone on our ops team help with this so that the IR team can focus on the incident. The key points here are that the Security Incident summary title may change from the title of the event, so we edit that if we need to. The Epic names may vary, but we create the first one with exactly the same title as the Incident. Then we create a bunch of tasks, which go into a workflow that starts with 'hold' (i.e. not in the queue 'to do'), 'do next' (once whatever in progress has been done), in prog / blocked, then 3 categories of done. More on why there are 3 categories in a moment.

![](/img/blog/jon/Musings%204.jpg)

There are a few opportunities for automation here which we're exploring with haste. The first is that when you click on 'Escalate to Sev 1' (or whatever Sev it is), a process runs that autocreates an incident ticket in Jira Service Desk, which in turn auto-creates a Slack channel. This process already exists for tech incidents in the business, so we are looking to integrate with it (and what the options are to create locked Slack Channels for incidents where we want to limit who can see what). The second opportunity is to automate the creation of a bunch of generic incident tasks each time an Epic is created.

![](/img/blog/jon/Musings%205.jpg)

What are those generic tasks, you ask? Here they are:

![](/img/blog/jon/Musings%206.jpg)

Here's what this looks like end to end... with spot of extra detail added around post incident review (see cloud-like bubble bottom right). What we do at the end of an incident is review all the tasks that were part of an Epic and we associate them with control failure or success. For example, if we had to ask a question about who a system owner was and no one knew or could tell us, that implicates failure of 'Asset Intelligence' (different from Inventory, this is the knowledge available around a system which we can glean from sources like jira, confluence or slack in an investigation). We also add labels to each task, indicating if the task was 'IRDiagnosis' (usually at the start of an Epic), 'IRSolve' (once we've diagnosed we're shutting stuff down), and 'IRMopUp' (the incident is passed and we're tying up loose ends.

![](/img/blog/jon/Musings%207.jpg)

Here is the list of controls we link each Incident Task to using the issue link 'success implicated by' or 'failure implicated by':

 - 'Understand' controls
 - Asset Intelligence
 - Risk Intelligence
 - Threat Intelligence
 - Vulnerability Intelligence

#### 'Prevent' controls

 - Boundary Defense
 - Controlled Access Based on Need
 - Controlled Use of Admin Privileges
 - Cryptography
 - Data Loss Prevention
 - Denial-of-Service Prevention
 - Inventory of [Un]Authorised Devices
 - Inventory of [Un]Authorised Software
 - Malware Defenses
 - Password Management
 - Patch Management
 - Personnel and Secure Culture
 - Secure Application Engineering
 - Secure Device Engineering
 - Secure Network Engineering
 - Third Party Due Diligence
 - Vulnerability Management
 - Wireless and Mobile Security

#### 'Detect' controls

 - Account Monitoring
 - Application Monitoring
 - Facility Monitoring
 - Network Monitoring
 - System Monitoring

#### 'Respond' controls

 - Incident Response
 - Disaster Recovery


Finally, we graph all this to get something like the pics below. We're going to be doing this during incidents in the future rather than just at the end as we can get a much better overall visual picture of what's happening than through the Confluence pages we use at the moment.

The first graph shows Incident Tasks in their label categories, clustered around relevant Epics.

![](/img/blog/jon/Musings%208.jpg)

The second gives a view of what Controls are implicated in failure and success. Once we get it up and running, it will look something like this below (very rough). The Control name (e.g. Boundary Defence) sits in the center of a cluster of questions (Incident Tasks) that implicated it in success or failure. We'll be able to see the names of the tasks and eventually have these clustered by the IT system(s) they related to (as usually several systems are involved across Epics and it's helpful to know what systems had better capabilities associated with them.

![](/img/blog/jon/Musings%209.jpg)

Hope that was useful / interesting. Will share some more technical details about how we get this stuff into graphs from Jira at some point

Thoughts welcome! J. [@CxOSidekick](https://twitter.com/CxOSidekick) #PBXSecurity
