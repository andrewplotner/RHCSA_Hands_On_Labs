<pre> 1. Start the rpcbind, nfs-server, rpc-statd, nfs-idmapd </pre>
<pre> 2. Make a directory that will be your NFS share path `/nfs` </pre>
<pre> 3. Make the NFS shareable to host2 </pre>
<pre> 4. On node01 mount the NFS share at `/mnt/nfs` </pre>

Once mounted run this command: `[[ -e /nfs/testfile.txt ]] && echo "Awesome Job, You're Done" || echo "Try Again" `{{execute}}
