---
draft  : true
title  : Creating a Neo4J graph for the recruitment process
author : Dinis Cruz
notes:
  - english and structure needs fixing
---

Creating a Neo4J graph for the recruitment process

Our recruitment process is, in a way, a giant graph, where you have the candidates to commit the work for, the potential candidates, the jobs that we have, the skills that we need, the interaction that we have with them, and the connection with members of the team or with communities. 

To see if we can create a way in Neo4J, which is a graph database, to store, to capture and to visualize, sorry, to store and visualize these relationships. And envisioned if Neo4J is the property base graph, something where the candidates are nodes, the skills are nodes, and the edges, our relationship and the connections between them. 

So, another question that I have is on how do we store the data? Ideally, the raw data to be stored. And really vault format, so that it's easy to maintain and easy to update, and ideally on Github, which is then assumed and injected into a graph, so we can visualize this.

And the reason to this, is so that, you can maintain and you can easily make changes. It's a much easier way to scale. Because for me the beauty of the graph, is that you can evolve the scheme. As you go along, you can, basically, create this evolutionary design, the more you understand it, the more data arrives, the more you create relationships. And eventually, you reach a stable state, where you have a perfect place to capture the information and that's when you know it's working. You know it's working, when it's very easy to add news and relationships to the graph based on your data, the actions. And that gives a feedback group on what actually is going on. So, drives your behavior. So, is that feedback loop that is actually important. 

So, what I want to see is, can we use our current recruitment process as a way to visualize this? So, can we use graphs in the recruitment process as a way to make it much more efficient and much more effective? We own to create a great experience for the candidates. We're also able to find, new and better, candidates and find exactly a great place to capture all the data that we already have, but when you look at it, it's already really complex, and if we don't do these, we actually get swamped. Even in basic things, when to reply? how to reply? how to note? how to put pressure? how to value? how to get feedback? So, we actually create a really powerful workflow.

So, my view is in a graph. So, the challenge for the candidate to do this is to show a good example of a simple recruitment process and how they could create that using Neo4J.

