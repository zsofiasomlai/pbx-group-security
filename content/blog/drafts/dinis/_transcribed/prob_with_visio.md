---
draft  : true
title  : Why Visio diagrams don't scale
author : Dinis Cruz
notes:
 - english and structure needs fixing
---

Why Visio diagrams don't scale


Visio diagrams have, let's say, non-text based or no dynamic diagrams. And they have a couple of key fundamental problems, which basically makes them almost as good as a diagram on a white board or a static file. So, the first problem is that they are hard to edit, they require the person to have Visio installed or other online diagram tool, and they require the person, who actually create the thing in the first place, to be able to main it and to make changes. And part of the reason you have that it's because, in a way, one of the best features of this diagramming tools, and this is not just Visio, it's any kind of online major big set of diagramming tools that exist out there, is the fact that you can spend a lot of time making the design better and really be able to create some really beautiful, and nice intrinsic designs, which area all manually created. Because, literally, every one of those is manually maintained, none of that mostly automatic generated. The best part you get is, that sometimes a little bit of automation, as when you change an object from the other side, the lines, kind of, just stay together.

It's the fact that they are hard coded, right? The patches and the structure are hard coded, which basically means that it's very hard to make changes. So, it's a situation that, as the team evolves, after a while it becomes very allergic to making changes. Because the change sometimes imply that your design architecture needs to change, and you become allergic because you have to log in the initial returns, where the more complex, actually, tougher the graph becomes, the hardest to maintain.

So, that leads to another big problem that you have with these graphs, which is the fact that they tend to be snapshot pictures of a moment in time. Which basically means that they not tend to be used in day to day, which means they go out of date, which then means they lose their significance, which creates a situation where you need this massive spike of work just to maintain that. Which is kind of why most of this graph, and most of these network graphs, tend to be out of date, because, you know, it's a problem where this graphs only work if they are 100% correct. Or when there 1% wrong, you can easily change it.

So, it takes us to the next part, which is these graphs needs to be very easy to change, and they are not. So, the irony is that, the fact that they are hard to change, means they are going to be hard to maintain, means that they are not going to be 100% correct, which basically means that the value goes down. 

So, I want to point to the second one, which is the fact that they are all hard coded. So, the fact that they are all hard coded in the design, when you look at the alternative, which is when you have dynamic generated graphs, the fact that you cannot actually control the layout. The fact that the layout is dynamic generated based on your input, especially when you look at graphs, that actually becomes one the best features. Because it means that it's very easy to make change, and you are happy to make change, because you are don't pay the cost of actually having to restructure things across.

Okay, so, what is the alternative? The alternative is to use technology like a dot language and tools like Graphviz to actually generate graphs from text, or programmatically from script. 
What this means? It means that now you have an environment, where the data source that is used to create your graph is actually dynamic, and as you update it, you graph changes. Your graph is more defined, your graph takes different shapes and different structures. But then, it actually scales, because you can actually start to use those graphs and those structures in your day to day, and specially, if you can get it to the point where is managed in a git environment.
You have to also solve, the other big problem, which is versioning. Which is basically the fact that you want something to be easy to edit, but also easy to see the differences between one graph to the other.

So, we need to add another big problem that graphs have is versioning. Another big challenge that we have, especially with big graphs and the more complex they become, it that it's very hard to version, which actually means that when you look at it overtime, not only they might not be updated, when you look at a graph a week later, or a month later, what you really want to see is the delta. What you really want to understand is what changed from the last time I saw this graph, and unless the data is stored, the way the data is stored is in a text based format, or in a way that it's easy to differentiate, then you can actually not tell the difference. And that becomes again a big problem.

So, the reason I like technologies like dot language and others, is because they allow that environment to happen.

