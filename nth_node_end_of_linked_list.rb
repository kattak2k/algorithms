=begin
Nth node from end of linked list
---------------------------------
Given a linked list consisting of L nodes and given a number N. The task is to find the Nth node from the end of the linked list.

Input:
First line of input contains number of testcase T. For each testcase, first line of input contains number of nodes in the linked list and the number N. Next line contains N nodes of linked list.

Output:
For each testcase, output the data of node which is at Nth distance from end.

User Task:
The task is to complete the function getNthFromLast() which takes two arguments: reference to head and N and you need to return Nth from end.

Constraints:
1 <= T <= 200
1 <= L <= 103
1 <= N <= 103

Example:
Input:
2
9 2
1 2 3 4 5 6 7 8 9
4 5
10 5 100 5 1

Output:
8
-1

Explanation:
Testcase 1: In the first example, there are 9 nodes in linked list and we need to find 2nd node from end.  2nd node from end os 8.  
Testcase 2: In the second example, there are 4 nodes in linked list and we need to find 5th from end.  Since 'n' is more than number of nodes in linked list, output is -1.
 

** For More Input/Output Examples Use 'Expected Output' option **
=end

