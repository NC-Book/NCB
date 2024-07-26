# A Walk in the Park

This activity is a hands-on application of the travelling postman problem, so it can be done anytime after Lecture 3. 

As a preparation find a map of the walking paths in a small local path, or if you don't have a suitable one, part of your campus. 
The idea is to chose an area that the students know well, and that is neither too small nor too large to complete the task. 

Then ask the students to work in small groups to plan the best walk through the park that uses every link once. 
While the details may depend on your park, this will be a bit more diffiult than one would think at first glance. Here are 
some of the obstales that students may encounter:

- It is not clear what the nodes are: If two three-way intersections occur very close together do we treat at as two separate nodes
  or is it ok to merge it into one four-way intersection? Many parks also contain larger plazas. Once could model these as one big node of
  high degree or split them up into multiple smaller nodes.
- It is not clear what links count: Quite commonly parks have many paths that lead to gates at the edge. These gates then become degree 1 nodes.
  This greatly increases the number of odd degree nodes. But maybe it is permitted to walk outside the park from one of the gates to the next,
  which often makes pairing up the gates with other odd-degree nodes easier. Or maybe the challenge is about the paths in the park and we don't
  necessarily need to include them in the challenge at all.
- Students might wonder is it ok to assume that the shortest walk is the nicest one?
- Finally, parks tend to have a lot of three-way intersections, which makes the pairing problem more difficult.
- It may be hard to measure the length of paths on the map. 

We essentially want students to notice such problems themselves. Then point out that their are two types of problems here: The first three problems 
listed above are modelling problems, while the last two are tecnical/algorithmic problems.

The central learning outcome from this exercise is that modelling problems can and will occur in real-world applications. Encourage the students 
to find their own solutions to the modelling problems. After all the goal is to find a nice walk and what is nice is a subjective question so there 
are no worng answers concerning the modelling. 

By contrast the technical/alorithmic problems have a clear answer. A given path has just has one length. So if we have decided we want to measure this 
link there are right and wrong answers. Likewise if we have identified nodes, links and link weights, then there is only a single correct answer for 
the Chinese Postman problem. 

You can use the pairing problem that develops to motivate a detour into pairing algorithms. However, unless your park is huge students are typically 
able to figure out the best way to pair up the odd-degree nodes using a process of deduction. This may be an opportunity to think again about 
branch-and-bound and greedy algorithms. 

If you have the time you may want to discuss the walks proposed by different teams and maybe even have a vote on the best solution. Actually walking the 
solution as a group would be a fantastic team-building activity. 




