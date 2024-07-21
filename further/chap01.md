# Further Reading for Chapter 01
*If something is missing that should be listed here, contribute it via a pull request*

**Kruskal's greedy algorithm**

## MST Algorithms
Kruskal's algorithm (Kruskal 1956) is one of several algorithm that solve the minimum spanning tree problem. Other algorithms include Borůvka's original algorithm (Borůvka 1926, Borůvka 1926a), translated in (Nesteril 2012) the reverse-delete algorithm (Kruskal 1956), also by Kruskal, and Prim's algorithm, which was originally discovered by Jarnik (1930), and independently rediscovered by Prim (1975)  and also Dijkstra (1959).  While all of these algorithms build on similar ideas, they differ in some details that affect their efficiency in different settings. A very good survey and comparison of these classical algorithms was provided by Grahan (1985). 

For most common problems the classical algorithms will get the job done in reasonable time. Additionally, some very highly optimized algorithms exist which are faster for very large problems, e.g. (Karger 1995, Chazelle 2000, Pettie 2002).

## Relation to Steiner Trees
The MST algorithms find the optimal solution to the power grid problem provided that power lines always connect cities. In the real world there is typically a way to connect the cities with shorter power lines if we are allowed to place nodes where lines intersect outside cities. This related problem is known as the Steiner tree problem (Gilbert 1968). While the Steiner tree problem seems at first glance more general it is in my assessment of lesser importance as by comparison the spanning tree problem appears in a much wider range of applications. 

## Greedy Algorithms
The spanning tree problem studied here is an example of the wider class of problems that can be solved by greedy algorithms. It has been shown that all such problems have a common algebraic structure, now called a greedoid. This was proven by Kortel (1984), which is still a good introduction to this topic. Therin the work of Borůvka (1926a) is creditited with laying important foundations for this theory.  

### Otakar Boruvka 
For more information about the life of Otakar Boruvka and the history of the spanning tree problem see Nesteril (2012) 

# References

Borůvka (1926) -- O. Borůvka: *O jistém problému minimálním*, Práce Mor. Přírodověd. Spol. V Brně **3**, 37--58.  
Borůvka (1926a) -- O. Borůvka: *Příspěvek k řešení otázky ekonomické stavby elektrovodních sítí*, Elektronický Obzor **15**, 153–154. 


[2] , Prspevek k resen otazky ekonomicke stavby elektrovodnch st, Elek-
trotechnicky obzor, 15 (1926), pp. 153{154.
[3] J. Kruskal, On the Shortest Spanning Subtree of a Graph and the Traveling
Salesman, American Mathematical Society, 7 (1956), pp. 48{50.
[4] J. Nesetril and H. Nesetrilova, The Origins of Minimal Spanning
Tree Algorithms { Boruvka and Jarnk, Documenta Mathematica, I (2012),
pp. 127{141.

