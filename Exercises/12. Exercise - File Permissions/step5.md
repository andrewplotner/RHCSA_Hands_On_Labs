<pre> Set the mask on the file1 to read only</pre> 


<pre> Then as the starbuck user, attempt to execute the following command: echo "test" > /tmp/file1 </pre>

>>Q1:Why does this fail? <<
( ) The file doesnt have the execute permissions on it
( ) Starbuck doesnt have rw permissions
(*) Mask dictates maximum permissions
