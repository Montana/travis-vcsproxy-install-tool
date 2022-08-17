# Perforce Travis CI VCS Proxy Setup Tool 

Bash script I'm making to make the user journey easier to setup Perforce from the VCS Proxy. Once you've cloned this repo and unzipped it, please run:

```bash
chmod u+x perforce.sh
chmod u+x assembla_tool.sh
```

To run these scripts after you've ran `chmod` simply just do: 

```bash
./perforce.sh
```
For the Perforce tool and then:

```bash
./assembla_tool.sh
```
For the Assembla tool. Please read the rest of my `README` before you actually run either of those, there's some steps you need to do before you run these bash scripts that will assist you in your installation and deployments.

## Passwords/Enviornment Variables

Before using my script and connecting to the server, set `P4PORT` (to tell the client where the server is) and P4USER (to tell the server who you are). P4PORT is specified as hostname:port, with the port usually (but not always) being 1666. If you're not sure what your Perforce server address and user name are, check with your sysadmin:

```bash
p4 set P4PORT=your.server.hostname:1666
p4 set P4USER=your.username
```
You can also use "set" or `setenv` or `export` as appropriate to your shell, but with a `2014.2` or newer Perforce client (use `p4 -V` to check your version information) you can use `p4 set` as a persistent cross-platform alternative. Another option is to use the `-u` and `-p` flags on every command you run.

Now simply to login, just run:

```bash
p4 login
```
Then to generate the token that the VCS Proxy will ask for a `server level token` you can generate this by doing:

```bash
p4 login -a -p
```
Copy that string of numbers, and paste it in the VCS Proxy where it's defined.

## Push files to Assembla

When you have your `.travis.yml` file in the `test-p4` folder that my tool makes for you, you'll then want to push it to Assembla, so I've also automated that for you! So open `assembla_tool.sh` and just run that and it will run the proper `p4` commands you need to push your files to Assembla. 

Enjoy the script, hope it makes life a tad easier! 


<br>_Made by and Authored by Montana Mendy_</br>
