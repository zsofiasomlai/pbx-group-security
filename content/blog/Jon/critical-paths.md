---
title   : Critical Paths
banner  : /img/blog/Photoboxgroup_SecurityBlogArticle_squareRGB.png
date    : 2018-10-01
images  : ["/img/blog/Photoboxgroup_SecurityBlogArticle_squareRGB.png"]
author  : Jon Hawes
---

I came across this blog by Seth Godin years ago about ['understanding the critical path'](https://seths.blog/2013/11/understanding-critical-path/) and there was a great few sentences at the end that read:

_"...delaying the critical path by one hour at the beginning of the project is the very same thing as delaying the entire project by an hour at the very end. Rush early, not late. It's cheaper that way, and better for your peace of mind, too."_

More recently when I was working at Panaseer I read Edmund Lau's book 'The Effective Engineer', which expounds the principle of [high leverage activities](https://medium.com/@renaldi/the-effective-engineer-by-edmond-lau-4353311f57cd). As the book says:

_"Effective engineers aren’t the ones trying to get more things done by working more hours. They’re the ones who get things done efficiently — and who focus their limited time on the tasks that produce the most value. To be effective engineers, we need to be able to identify which activities produce more impact with smaller time investments. Not all work is created equal. Not all efforts, however well-intentioned, translate into impact."_

In this job and the last, I had the basic tools (i.e. strategy, plan, snag list of things to avoid doing) to be able to 'rush early'. In terms of getting ahead of the game in projects, that definitely paid dividends. (To be fair, I don't yet have the data points to say if running really fast from the word go ever means you slow down, as generally it seems there's a month to 2 months of grace period before the universe throws you a load of extra things to do, which means you'll need all the extra time you've won by sprinting hard from the start to deal with them, but they too demand you sprint to deal with them. An infinite loop, if you will.)

Putting the concept of 'high leverage' together with the principle of 'rush early' was a really helpful lightbulb moment for me, because I had a mental framework to assess activities and my to-do list. In my last job I went through about a month of asking myself each morning "If there was only one thing I could do today, that will make it easier to deliver this task / project / goal in timeframe-n, what would it be?"

The challenge I had in my last job was where I stored all the information (e.g. tasks, objectives, outcomes) about the critical path I'd come up with. It was either in my head, in a notepad, or somewhere online. The good thing was that I was only really dealing with one project (albeit one with lots of strands across lots of business units), so I could just about get away with it. At Photobox, the good news is our excessive use of Jira means that we have somewhere to store all the information we can dream of generating, but I have far more areas to think about and vizualizing everything together across all the areas of work is not easy.

So I decided last week to focus on the single activity of getting everything into Jira, in a structure I could use to communicate what I'm up to with our execs and across our team, and use to review our critical path every week during our sprint (aka: continue to run as fast as you can forever ho ho) planning session.

This started with 'the goal' that I'd been set as part of our OKR framework. This is still developing, but roughly I think about it like this.

The top level Objective for the Detect team is 'Ensure business continuity by improving the Group's ability to detect and respond to incidents'. Lofty, I hear you say. Indeed so. Thus one must break it break it down.

It's taken me about a month to put together what I consider the 4-5 priority Key Results (aka: more tangible outcomes) that we need to deliver to meet our objective. These are currently:

- A consistent and efficient IR process is implemented, tested and communicated across all 5 PBX Group brands
- Coverage, visibility and detection capability is mapped across all 5 PBX Group brands for web-app, AWS and LAN attack surfaces
- The number of high fidelity detections is increased 5x for each attack surface using existing tools
- Five opportunities to optimise detection efficacy and coverage are identified, costed and POC'd if justified

However, clearly these Key Results are way to big to deliver in a single two week sprint. This means our 'Level 1' OKRs need breaking down further into 'Level 2' OKRs. I think about this structure like this:

![](https://user-images.githubusercontent.com/656739/46303650-4e135b80-c5a4-11e8-8f51-eb25fa6e53bc.png)

Here's an example of this structure for one of our Level 1 Key Results. It’s in table format as I haven’t quite got the ’tree visualisation’ that looks like the picture above working yet.

![](https://user-images.githubusercontent.com/656739/46303531-fd9bfe00-c5a3-11e8-81e0-f3e671787c5f.png)
![](https://user-images.githubusercontent.com/656739/46303381-90886880-c5a3-11e8-8472-dab16d500e6e.png)
![](https://user-images.githubusercontent.com/656739/46303382-90886880-c5a3-11e8-92c3-a8e55c94156e.png)

There are several benefits of having this mapping.

First is to help us develop process playbooks; in this case, for running POCs of detection technologies on our LAN. 

The second (which the table structure doesn’t show) is to be able to see the order of tasks (Jira doesn't do this either, so we have a way to show this in the tickets as organisation is done in a Kanban board until we sort our preferred vizualization). 

And finally we can visualise all our OKRs across the entire structure above, so that not only do we know what we’re all doing across the team, but we can also share and review our thinking to get challenge on whether we doing the right things, and whether the tasks we’ve mapped follow the critical path (the longest string of dependent, non-compressible tasks) to our outcome.

Thoughts welcome! 

J. [@CxOSidekick](https://twitter.com/CxOSidekick)
