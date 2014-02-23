## Deduplicate a linked list
----

This application builds a doubly-linked list of 200 nodes with random values between 1 and 100. It will remove any duplicate nodes so each value is in the list no more than one time. 

The first linked list will add node values to an array. Linked list phase2 looks at what's left in the linked list to see if there's a duplicate, without the use of an auxillary data structure (like an array). 

#### An example with values less than 10: 

Input:

      8 <=> 4 <=> 2 <=> 4 <=> 9 <=> 4 <=> 8 <=> 8 <=> 0 <=> 3

Output:

      8 <=> 4 <=> 2 <=> 9 <=> 0 <=> 3
