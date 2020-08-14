<pre> setfacl -m m::r file1 </pre>

This fails because the mask dictates the maximum permissions allowed. 
Its not A or B because You dont need execute permissions to echo into a file and starbuck does have rw permissions. 

