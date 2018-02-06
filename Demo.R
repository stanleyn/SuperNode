##Demo for SuperNode.R main code
##Prepared: February 6, 2018
##Contact: Natalie Stanley (NatalieStanley1318@gmail.com) if you have comments

#This code is tested on R 3.4.3
#Please make sure you have igraph installed (install.packages('igraph'))

#######################################

#load stuff you need
library('igraph')
source('SuperNode.R')

#Read in some sample network data
Net=readRDS('data/As22Sample')

#let's try 500 super nodes: plese feel free to change as you wish!
S=500
SNOut=SuperNode(Net,S)
Node2SN=TurnToUniqueLab(SNOut$SNAssn)
######################################################
##We will visualize what we just did with some plots##
######################################################

#First, plot the original network with nodes colored by their super node assignment
print('Plotting~ Please be patient!')

#Let's color the nodes by their super node assignment
 	Colors=rainbow(max(Node2SN))
  	V(Net)$color=Colors[Node2SN]
  	quartz()
  	plot(Net,vertex.size=3,vertex.label=NA)

#Let's plot the new 500 node super node network
	NewNet=SNOut$SNNet
	V(NewNet)$color=Colors
	quartz()
	plot(NewNet,vertex.size=3,vertex.label=NA)
