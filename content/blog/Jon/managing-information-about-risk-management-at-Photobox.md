---
title   : Managing information about risk management at Photobox
banner  : /img/blog/Photoboxgroup_SecurityBlogArticle_squareRGB.png
date    : 2018-09-04
images  : ["/img/blog/Photoboxgroup_SecurityBlogArticle_squareRGB.png"]
author  : Jon Hawes
---

## Managing information about risk management at Photobox

I've spent my first few weeks at Photobox (awesome team, great company, lots of fun btw) getting my head around - and marvelling - at how we manage information about risk, vulnerabilities and incidents in JIRA. 

One of the biggest challenges I've seen across companies in the last 10 years is how information (aka: corporate memory) is recorded / managed / linked in order to understand or uncover relationships and dependencies. Usually when you join a company, getting a historic feel for what's happened and what the issues are is ... well, painful. Like, out of date PowerPoint painful.

The key categorisations of issues we work with at Photobox are **Risks** (read: why a Vulnerability matters); **Vulnerabilities** (read: something that causes a Risk), and **Incidents** (read: threaty stuff happening because of a Vulnerability). The power of JIRA is how we're able to link these together, then use meta-data tags to pull together tactical, operational and strategic views in a graph vizualization. More on this in another blog soon...

I've been working with a few of the team on how we can take the foundational building blocks that exist already, and add the next layer of information to them. These are mainly around:

1. How we can categorise and add metadata to set up narratives around risk being due to uncertainty, known control gaps,  control failures or technical exploits (which would themselves link to a control failure or control gap)
2. How we can use the 'validate' phase to understand the scope across business units for a given issue, and what the relative effort vs impact is to fix - relative to where the asset is in the attacker life-cycle

Sketch ![here](/img/Jon_PBXblog001_RiskTaxonomy.jpg). This is more a rough approximiation of how I understand our taxonomy today, as opposed to what we are actually doing. 

Side note: One of the things I particularly like about this is you can validate a *perceived* risk, which exists because of a vulnerability in the form of 'lack of knowledge'. This helps capture assumptions, and makes sure we don't skip to making decisions about 'prevent' or 'detect' before first 'seeking to understand' (possibly the most under-rated security control there is out there). The power of this is that it makes it transparent to other teams what we are trying to understand, so they can challenge whether we are pointed in the right direction. And if we're not, we can capture that the vulnerability is a false positive so other teams don't run down the same rabbit hole. 

Thoughts welcome! J. @CxOSidekick #PBXSecurity
