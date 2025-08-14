# Remove snap from Ubuntu

This simple bash script removes snap from Ubuntu. Why? Because snap is severely broken and it completely messes up my servers. The content for this script came from an [Ask Ubuntu answer from Lorenz Keel](https://askubuntu.com/a/1285102/392607). I've put it in github so that I can invoke it on my aws ec2 ubuntu instances as part of my packer builds without having to copy the contents of the script everywhere and eventually lose it.

**Usage**

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/BryanDollery/remove-snap/main/remove-snap.sh)"
```

## Important:

If you're running Ubuntu Desktop, do not run this script. It will mess you up.

## Note:
While this approach worked for a while, Canonical have now woven snap into their desktop so much that removing it messes up some necessary applications, like Firefox, and fixing this is difficult. Ubuntu Desktop no longer includes the official repos for software, preferring instead to use Canonical's own snap repos. You can remove these repos but the official repos don't see to work, so you lose firefox. In conclusion, I cannot recommend Ubuntu Desktop to anyone for any use-case. If you're running Ubuntu Desktop, do not run this script.
