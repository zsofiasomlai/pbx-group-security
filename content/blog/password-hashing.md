---
title       : "Improving Password Hashing — from the frontline!"
date        : "2017-12-17"
tags        : ["Photobox", "password", "security", "hashing"]
categories  : ["Security Engineering"]
banner      : /img/blog/Pbx_SummaryCybersecurityArticle_squareRGB.png"
images      : ["/img/blog/Pbx_SummaryCybersecurityArticle_squareRGB.png"]
---

I joined Photobox Group Security at the start of May. This is the first in a series of blogs where I’ll detail some of the work I am involved in.

It’s been a whirlwind few months at an awesome company and one of the things that continues to excite me about internet companies, is the speed at which we can deliver change.

Given the amount of data breaches over the last few years, one of the first things I wanted to discover was how well we were protecting our customer passwords. It’s such a hugely important piece of information to protect, so that even in the event of any data being compromised (which of course we work tirelessly to prevent!), we have a level of comfort that this kind of data is unusable to an attacker and making it impossible to perform a successful brute-force attack.

Thanks to the wonders of Slack, JIRA and good ol’ face-to-face communication, I was able to establish the hashing algorithms across our Group within a matter of hours.

I became aware that for one of our brands, we were using an out of date algorithm which we could improve. This also wasn’t aligned with our other brands, which were using industry-standard algorithms.

Following a discussion with our Tech Ops team, within a 30 minute meeting, we had established a 3-part plan where we would update our algorithm to [PBKDF2](https://en.wikipedia.org/wiki/PBKDF2) with 128,000 rounds (and Salt of course!). This would cover all new customers to our site and then perform a re-hash when an existing customer next logs in.

This work was implemented in the team’s next Sprint, meaning the implementation and testing of the change was completed within a matter of days. The team involved were incredibly helpful and their ‘can-do’ attitude is an example to all business of how to engage well with Security teams.

As a result, we’re able to carry out important improvements at pace, which reduces risk and ensures our customer data (which is paramount to trust in our product) is protected to the best standards our industry currently offers.

*Stu Hirst, Head of Security Engineering*
