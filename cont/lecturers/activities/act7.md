# Motifs in non-sparse graphs
In the book we mainly considered sparase network ensembles like the ER graphs, where the mean degree is independent of the number of nodes. 
However, some real world networks do not scale like this. For example ecological foodwebs don't seem to have a typical mean degree, rather 
they have a typical connectance (links divided by the number of nodes squared), so that every possible link is realized with a fixed probability 
even if change N. 

More generally we can think of a class of networks that are generated like ER graphs, but we scale the probability that a link exists between two 
nodes as 

$$p=N^\alpha$$

