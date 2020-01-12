%Sofiya Markova
%goal of code:
%display the average number of times it takes to roll a dice in order to get
%each number at least once. can input how many games want played and how many sides on the die
 
function average = DiceGame(numSides, numGamesWant)
 
%var track number games played so run until do numGamesWant simulations game
numGamesPlayed= 0;

%var accumulate sum of all number of rolls take (used for average calculation)
accumulateValue = 0;
 
%set array of all zeros starting at one and going to the number of sides
flg = zeros(1, numSides);
 
%var track number rolls take to get numSides inclusive on die
rollsCount=0;
 
%var track if all elements in array multiply to give 0 or not. 0 = one side
%of die not rolled yet. 1 = all sides of die were rolled
addCheck = 0; 
    
%for loop goes for how many games want to play to calculate average based
%on that amount of games
for j = 1: numGamesWant
    
 %while loop: playing 1 game. keeps going as long as not all sides of die were rolled   
while addCheck == 0

%generate random number that means the side that was rolled on set amount
%of sides die
num = randi(numSides); 


%change flg array element to 1 based on what side was rolled
flg(num)= 1;
 
addCheck = 1; %so that can go into loop (if it is 0 as was set, it will always be equal to zero because the start is zero)

%for loop check to see if all elements in array multiply to 1. because if
%one side was not rolled, that array element stays 0 and so the product of
%all the lements stays 0. telling the program to keep generating random
%numbers to get the missing "side"
for i = 1: numSides
   addCheck = addCheck * flg(i); 
end


%accumulate the number of rolls it took to roll all the values
 rollsCount=rollsCount+1;
 

 
end %1 game end


%sum all values it took to get all rolls. used for average calulation
 accumulateValue =accumulateValue+rollsCount;


%accumulate the number of games playes to keep track when 100 simulations
%were done
numGamesPlayed = numGamesPlayed +1;


   end
  
   
   %calculate average
average = accumulateValue/numGamesWant;

