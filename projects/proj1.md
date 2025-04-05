# Make a bridgewalk

People love bridgewalks. The walk that I designed for the city of Bristol was quite successful (it has received extensive news coverage, 
has a [wikipedia page](https://en.wikipedia.org/wiki/Bristol_Bridges_Walk), and an active [facebook group](https://www.facebook.com/groups/430454211044717)).

You can do the same for your city if your city is suitable, obviously you need bridges and they need to be in a configuration that permits an eulerian walk, 
but more about this below. 

## How to do it
You can approach this as follows:

### Step 1: Research
Use different online maps (e.g. google maps, opens street map, etc) to identify the conneected land masses in your city and the bridges connecting them. 
Make a list of spots where the maps are ambiguous. For example you may wonder if some of the bridges are actually legally and safly walkable, ect. 

### Step 2: Scouting
Go on some scouting trips to have a look at the ambiguous spots. Also perhaps also scout out some likely walking routes between them. (But be remember to 
be safe. If an area is too dodgy you probably wouldn't want to include it in your walk anyway.)

### Step 3: Make the rules
Cities that make nice and interesting bridgewalks immediately are pretty rare. You may find that you have too many nodes of odd degree 
or that the walk is too long or too boring, or all kinds of other problems. But you can make your own rules and sometimes that can fix things.

In Bristol I decided to consider only those bridges that would be included in the Königsberg problem, so only legally walkable bridges that are 
suitable for a sunday afternoon walk. I also excluded some minor bridges that were far from the main river network and bridges that cross other things then 
rivers. Otherwise the walk would have been much too long. Also for instance bridges over roads etc. hardly pose a challenge in the context of the bridge problem
as one can usually simply go around them if one would be tempted to cross one a second time. 

So for your city you want to make plausible rules such that the problem is solvable and makes a nice walk. Don't have rivers? This is a tough one, but in some places, railway crossings or even bridges over motorways can work instead.  Is your city too big? Just consider a part (historical center / historical boundaries / the nice bit where its fun to walk). 
Too many nodes of odd degree in the outskirts? Maybe you can nudge the boundary of your area across a bridge or three to fix that. 
Still no eulerian walk? Maybe, you can exclude certain areas (Perhaps it can be argued that nobody would go there
for an afternoon stroll).  If all else fails just make it an Chinese Postman problem and find the best walk over all the bridges instead. 

### Step 4: Find a good solution
Now you don't want to find any Eulerian walk, but the best Eulerian walk. This may require some further scouting for nice, safe and interesting routes between the bridges.
In Bristol I did this using a divide-and-conquer approach by first looking for the nicest solution for parts of the walk and then trying to connect them together. For this purpose 
I subdivided the entire area such that an Eulerian walk was possible in each of the parts. The sensible solutions to some of these parts will be fairly easy to identify.  
If you have a long strech of river crossed by multiple bridges the obvious solution is to criss-cross back and forth across the river (but is this going to be nicer 
if you start this stretch on the left bank or the right?) Where rivers branch it gets a little bit more interesting as there are several ways in which these can be transversed. 
In the end you'll have to compromise and chose the second best solution for some of the parts to avoid very bad ones in other parts, or to make sure you don't miss some highlights. 

### Step 5: Walk it
Of course if you are confident in your solution, you want to prove that it works. When I did this in Bristol I actually failed on my first try because I discovered another bridge! 
Duh! Back to the drawing board. Also take some pictures on the walk, for the next step. 

### Step 6: Write a press release
Seriously, write a press releases. Mention that you walked it, and highlight the connection to the centuries old-mathematical puzzle (Königsberg, 1736!). Your university has a press office that 
can help you writing and distributing the press release, and I promise local media will be interested. 

## Reports on solutions
* My Bristol bridgewalk. The walk is described by Lucas (2019) and a more personal account of this project has appeared as a chapter in Parc (2014). 

## References

Lucas (2019) -- J. Lucas, T.Gross: *From Brycgstow to Bristol in 45 bridges*, Bristol Books (ISBN 1909446181) -- [link](https://www.bristolbooks.org/shop/from-brycgstow-to-bristol-in-45bridges) 

Parc (2014) -- S. Parc, Ed.: *50 Visions of Mathematics*, Oxford University Press (ISBN 0198701810) -- [link](https://global.oup.com/academic/product/50-visions-of-mathematics-9780198701811?cc=de&lang=en&#) 






