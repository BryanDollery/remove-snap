# Remove snap from Ubuntu

This simple bash script removes snap from Ubuntu. Why? Because snap is severely broken and it completely messes up my servers. The content for this script came from an [Ask Ubuntu answer from Lorenz Keel](https://askubuntu.com/a/1285102/392607). I've put it in github so that I can invoke it on my aws ec2 ubuntu instances as part of my packer builds without having to copy the contents of the script everywhere and eventually lose it.

**Usage**

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/BryanDollery/remove-snap/main/remove-snap.sh)"
```
