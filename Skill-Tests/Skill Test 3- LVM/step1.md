*_<pre> Objective 1 </pre>_*
Create two physical volumes using /dev/vdb and /dev/vdc

*_<pre> Objective 2 </pre>_*
Create a volume group from both PV's titled "all-terrain"

*_<pre> Objective 3 </pre>_*
Create a logical volume called "venomoth" that is 5 GB large and apart of the "all-terrain" VG

*_<pre> Objective 4 </pre>_*
Format the LV as `XFS` and mount it `persistently` at `/mount/AATTVVV` using its `UUID`. Dump flag and in order flag should both be `0`

*_<pre> Objective 5 </pre>_*
Grow the mount point by 200 MB

Once complete please run the following command: `bash /tmp/verify.sh`{{execute}}