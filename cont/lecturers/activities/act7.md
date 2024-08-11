# Motifs in non-sparse graphs
In the book we mainly considered sparase network ensembles like the ER graphs, where the mean degree is independent of the number of nodes. 
However, some real world networks do not scale like this. For example ecological foodwebs don't seem to have a typical mean degree, rather 
they have a typical connectance (links divided by the number of nodes squared), so that every possible link is realized with a fixed probability 
even if change N. 

Following [1], we can think of a class of networks that are generated like ER graphs, but we scale the probability that a link exists between two 
nodes as 

$$p \sim N^\alpha$$

The case of $\alpha=-1$ corresponds to normal ER graphs. At this value the number of all trees motifs scales linearly with the number of nodes such that their density per node remains constant as we scale the network. But the number of all cycles motifs remains constant, such that their density decreases linearly if we increase N. But what happens when $\alpha$ is changed? And how does one have to chose alpha, for such that the density for a given type of motif remains constant as we change N?

## References
[1] R. Albert, A.-L. Barabási: *Statistical mechanics of complex networks*, Reviews of Modern Physics **74**, 47-97 (2002)
