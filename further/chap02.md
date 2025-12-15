# Further Reading for Chapter 02
*If something is missing that should be listed here, contribute it via a pull request*

**The darkest path**

## Shortest path algorithms
Dijkstra's algorithm is not the only shortest path algorithsm, but a very prominent one. 
Interestingly, Dijkstra published it in the same paper as his rediscovery of Prim's spanning tree algorithm (Dijkstra 1959).

Some other algorithms also deserve a mentions. One limitation of Dijkstra's algorithm is that edges cannot have negative weights. 
If negative weights are allowed we might later find shortcuts that take us back to places that we thought we are already done with. 
In this case we might have to redo updates from these places, this leads to the Bellmann-Ford algorithms described first by Shimbel (1955) and 
later by Ford and Bellmann. Of course if the network has a cycle that in which the sum of the edge weights is negative, we have basically a time machine 
that we can use to arrive as early as we want at every destination.

There is also a whole class of algorithms that find the distances between all pairs of neodes in a network in parallel. Perhaps the most well-known 
among them is the Floyd-Warshall algorithm, which was described by Roy (1959), Floyd (1962) and Warshall (1962).

## More on Branch and Bound
A more extensive discussion of problem solving strategies and particulalry branch-and-bound can be found 
in Moore (2011) -- I can't recommend this book highly enough. 

## More Graph Theory
There are several good textbooks that provide a rigorous introduction to graph theory. I personally like 
the Trudeau (1999). 

## Longest Path Problem
Recall that paths cannot reuse nodes, and trails cannot reuse links so the longest path and the longest trail in a finite network 
are finite. The task of finding the longest path is a very difficult problem, whereas finding the longest trail is comparatively easy, 
using some results from Chap. 3. To understand the difficulty of the finding the longest path, note that a longest path that uses 
all nodes would be a so-called Hamiltonian path. If the longest walk does not use all nodes then a Hamiltonian path does not exist. 
Hence a longest path algorithm would solve also the Hamiltonian path problem.  

# References

Bellman (1958) -- R. Bellman: *On a routing problem*, Quarterly of Applied Mathematics **16**, 87–90.

Dijkstra (1959) -- E.W. Dijkstra: *A note on two problems in connexion with graphs*, Numerische Mathematik **1**, 269–271. 

Floyd (1962) -- R.W. Floyd: *Algorithm 97: Shortest Path*. Communications of the ACM. **5**, 345.

Ford  (1956) -- L.R. Ford Jr.: *Network Flow Theory*, RAND Corporation, Santa Monica, **P-923**.

Moore (2011) -- C. Moore, S. Mertens: *The nature of computation*, Oxford University Press.

Roy (1959) -- B. Roy: *Transitivité et connexité*, Comptes rendus de l'Académie des Sciences **249**, 216–218.

Shimbel (1955) -- A. Shimbel: *Structure in communication nets*, Proceedings of the Symposium on Information Networks, 199–203.
 
Trudeau (1999) -- R. Trudeau: *Introduction to Graph Theory*, Dover Publications. 

Warshall (1962) -- S. Warshall: *A theorem on Boolean matrices*. Journal of the ACM. **9**, 11–12.

 
