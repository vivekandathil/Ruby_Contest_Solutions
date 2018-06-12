#@author: vivekkandathil
#June 11, 2018
#SOLUTION TO: https://dmoj.ca/problem/ccc14j3

n = Integer(gets.chomp) #get problem input (n rolls on line 1, a b rolls on the next n rounds)
b,c = "",""
score_1,score_2 = 100,100
i = 0

#loop through all n rounds
while i < n do
	b,c = gets.split(" ") #split two scores, store string values

  #Check who one the round, change score accordingly
	if b.to_i < c.to_i
		score_1 -= c.to_i #Subtract highest dice value
	elsif b.to_i > c.to_i
		score_2 -= b.to_i #Subtract highest dice value
	end
	i += 1 #Increment i
end

#output final scores
puts score_1
puts score_2
