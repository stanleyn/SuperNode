# SuperNode
Reduce the size of your network from N nodes to S super nodes 

# Overview : 

-The objective of this code is to convert your network of N nodes to a network of S super nodes

-You will input your network (as an igraph graph object)

-You get out 1) Node to super node assignments and 2) the new super node network

-This is the work described in https://arxiv.org/abs/1706.04110

## Contact: 
 -For issues, please contact Natalie Stanley, NatalieStanley1318@gmail.com
 
Practical Info:
 -This code was tested using R version 3.4.3
 
 -You will need to install igraph if you have not already

# Examples
 
**Main Function**
-`SuperNode.R` is the main function

-Inputs:
  
  -`Network`: Your igraph network object
  
  -`S`: the number of super nodes you wish to turn your network into

-Outputs:
  
  -You will get out a list object with the following two entries
    
    - $SNAssn: The N-length node to super node assignment vector
    
    - $SNNet : The S-node super node network (again, an igraph object).

-To use: 

```R
source('SuperNode.R')
Out=SuperNode(MyNetwork,NumberOfSuperNodes)
```
**Demo Function**:
-Please feel free to try this on a sample network.

-This script loads the network and represents it with 500 super nodes.

-It then plots the network with nodes colored by super nodes

-It also plots the super node network.

-To use:

```R
source('Demo.R')
```
