#@author: vivekkandathil
#June 11, 2018
#SOLUTION TO: https://dmoj.ca/problem/ccc14j1

#Get angles from problem input
angle_a = Integer(gets.chomp)
angle_b = Integer(gets.chomp)
angle_c = Integer(gets.chomp)

sum = angle_a + angle_b + angle_c #Add angles to verify if sum == 180

#Output "Error" if angles do not form a triangle, otherwise continue
if sum != 180
    puts "Error"
else
    #Switch number of unique angles to determine triangle type
    case [angle_a, angle_b, angle_c].uniq.count
        when 1
            puts "Equilateral"
        when 2
            puts "Isosceles"
        when 3
            puts "Scalene"
    end
end
