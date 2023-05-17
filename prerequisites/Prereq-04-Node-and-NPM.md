# Installing Node and NPM

Installing Node is not hard, but having the right version of node on your machine can be difficult if you have apps that need competing versions.

We highly recommend Node Version Manager to make your life easier.

## Node Version Manager (Optional)

If you want to install NVM, please follow the link here: https://npm.github.io/installation-setup-docs/installing/using-a-node-version-manager.html

When nvm is installed, you can run `nvm list` to see the versions available to use

```
  * 18.12.1 (Currently using 64-bit executable)
    16.13.0
```

You can install additional versions with `nvm install <version> [arch]`

The version can be a specific version, "latest" for the latest current version, or "lts" for the most recent LTS version. Optionally specify whether to install the 32 or 64 bit version (defaults to system arch). Set [arch] to "all" to install 32 AND 64 bit versions.  
Add --insecure to the end of this command to bypass SSL validation of the remote download server.

Running `nvm ?` can display documentation like the paragraph above.

## Installing Node 

Downloads are available here: https://nodejs.org/en/download/

Once installed, you should be able to run the following command to confirm the version

```
node -v
```

The results will show the version of `v18.12.1`

Running `npm -v` will show the version of `8.19.2`

## Once installed, you can move onto the next step