# travis-perforce-setup-bash
Bash script I'm making to make the user journey easier to setup Perforce from the VCS Proxy.

## Passwords/Enviornment Variables

Before using my script and connecting to the server, set `P4PORT` (to tell the client where the server is) and P4USER (to tell the server who you are). P4PORT is specified as hostname:port, with the port usually (but not always) being 1666. If you're not sure what your Perforce server address and user name are, check with your sysadmin.

```bash
p4 set P4PORT=your.server.hostname:1666
p4 set P4USER=your.username
```

You can also use "set" or `setenv` or `export` as appropriate to your shell, but with a `2014.2` or newer Perforce client (use `p4 -V` to check your version information) you can use `p4 set` as a persistent cross-platform alternative. Another option is to use the `-u` and `-p` flags on every command you run.

Now simply to login, just run 

```bash
p4 login
```

Enjoy the script, hope it makes life a tad easier! 

* Montana Mendy
