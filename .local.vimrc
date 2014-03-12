"map <Leader>rr :call CleanShell("docker run -t test")<CR>
map <Leader>rr :call CleanShell("docker build -t test ".g:basePath)<CR>
map <Leader>rs :call CleanShell("docker run -i -t test /bin/bash")<CR>


