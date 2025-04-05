# Think of a Network

This is a good activity at a stage where students are starting to think in terms of networks, e.g. after lecture 2. 

Give then the following challenge:

**You are a network scientist. As you wait for your flight in an airline lounge you meet a well-dressed woman. 
She mentions that she is actually in the top management of an airline. You tell her that you work on networks,
to which she replies, "we kind-of operate a network, you work on that?" What you want to tell her is that you actually 
have worked on several networks that may be relevant to her company. Can you name a few examples of networks that 
would be relevant to an airline?**

Give the students a moment to think or discuss with their neighbors. Then when you get answers try ask the students to 
describe what the nodes and links in the networks they want to propose. (Specifying clearly what the nodes and links are
is good style, I wish I saw it in more papers.)

Here are some good answers that I got over the years:
* The network of flights (nodes: airports, links: direct flights) -- This is interesting because it allows me to find
  for example the shortest route to a destination, this could for example be relevant for the airlines booking website. 
* The network of departures (node: individual departure events of planes, directed weighted links: specify the probability
  that a delay in one departure, will trigger a delay in the other departure) This can give the company insights into how
  robust their network is against cascading delays.
* Pilot relationships (nodes: pilots, links: indicate that a pair of pilots harmonize well) allows the company to assign pilots in
  well functioning pairs, which can greatly increase safty (crew resource management)
* Co-assignment (nodes: pilots, cabin staff, links: joint assignments on flights) This is a physical contact network. It could be relevant
  suring a pandemic. Compartmentalizing this network can potentially slow the spreading of arirborne diseases in the company and thus
  help avoid business disruption.
* Unmet customer demand (nodes: airports, weighted links: number of customers who want to travel between the airports) Obviously interesting
  for airline management as it is the basis for planning new connections. 
* Supply chain (node: a company has some role in the production of items that the airline needs, link: indicates a flow of products between companies)
  Knowing their supply network helps companies to react quickly in times of crisis. For example if a disaster affects a given region, the company would
  like to know if the delivery of products they need will be affected.
* Electrical networks (node: a component of the plane, link: a cable) It's scary to think about that there is an electrical connection between the inflight
  entertainment system and flight controls, but of course indirectly there is as both feed of the same generators. Understanding the electrical network can
  help the airlines technical department identify the cause of malfunctions.
* Company hierarchy (node: employees, directed link: direct managerial supervison) Company structure affects how information can flow through a company which
  in the airline industry can have a strong impact on the safty record. (e.g. if a pilot has some safty concerns would they be able to voice them to somebody
  who has the authority to address them?)

There are actually many many more that students will come up with ranging from baggage handling to viral marketing. Prepare to be amazed. 

The aim of this exercise is to start getting ideas on where we can apply our new network modelling skills. 








