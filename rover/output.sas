begin_version
3
end_version
begin_metric
0
end_metric
3
begin_variable
var0
-1
5
Atom robot-at(loc1)
Atom robot-at(loc2)
Atom robot-at(loc3)
Atom robot-at(loc4)
Atom robot-at(loc5)
end_variable
begin_variable
var2
-1
3
Atom carrying(rock1)
Atom rock-at(rock1, loc1)
Atom rock-at(rock1, loc5)
end_variable
begin_variable
var1
-1
3
Atom carrying(rock2)
Atom rock-at(rock2, loc2)
Atom rock-at(rock2, loc5)
end_variable
0
begin_state
2
1
1
end_state
begin_goal
2
1 2
2 2
end_goal
14
begin_operator
drop rock1 loc5
1
0 4
1
0 1 0 2
1
end_operator
begin_operator
drop rock2 loc5
1
0 4
1
0 2 0 2
1
end_operator
begin_operator
move loc1 loc3
0
1
0 0 0 2
1
end_operator
begin_operator
move loc2 loc4
0
1
0 0 1 3
1
end_operator
begin_operator
move loc3 loc1
0
1
0 0 2 0
1
end_operator
begin_operator
move loc3 loc2
0
1
0 0 2 1
1
end_operator
begin_operator
move loc3 loc4
0
1
0 0 2 3
1
end_operator
begin_operator
move loc4 loc3
0
1
0 0 3 2
1
end_operator
begin_operator
move loc4 loc5
0
1
0 0 3 4
1
end_operator
begin_operator
move loc5 loc4
0
1
0 0 4 3
1
end_operator
begin_operator
pick rock1 loc1
1
0 0
1
0 1 1 0
1
end_operator
begin_operator
pick rock1 loc5
1
0 4
1
0 1 2 0
1
end_operator
begin_operator
pick rock2 loc2
1
0 1
1
0 2 1 0
1
end_operator
begin_operator
pick rock2 loc5
1
0 4
1
0 2 2 0
1
end_operator
0
begin_SG
switch 0
check 0
switch 2
check 1
2
check 0
check 0
check 0
switch 1
check 0
check 0
check 1
10
check 0
check 0
switch 2
check 1
3
check 0
check 1
12
check 0
check 0
check 3
4
5
6
check 2
7
8
switch 2
check 1
9
check 1
1
check 0
check 1
13
switch 1
check 0
check 1
0
check 0
check 1
11
check 0
check 0
end_SG
begin_DTG
1
2
2
0
1
3
3
0
3
0
4
0
1
5
0
3
6
0
2
2
7
0
4
8
0
1
3
9
0
end_DTG
begin_DTG
1
2
0
1
0 4
1
0
10
1
0 0
1
0
11
1
0 4
end_DTG
begin_DTG
1
2
1
1
0 4
1
0
12
1
0 1
1
0
13
1
0 4
end_DTG
begin_CG
2
2 3
1 3
0
0
end_CG
