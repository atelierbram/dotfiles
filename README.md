# dotfiles and faster after-upgrade OS setup

## system upgrade reminders
* before upgrading back-up `/etc/apache2/httpd.conf`
* after system upgrade several webdeveloper server things get's lost on Mac OS
* they need to get [repaired](http://remonpel.nl/2013/10/repair-osx-webdevelopment-server-after-osx-upgrade/)

### TODO

* Backup your system
* Upgrade OSX
* Install Homebrew
* Upgrade Xcode and run it at least once, [installing the commandline tools from terminal](http://www.computersnyou.com/2025/2013/06/install-command-line-tools-in-osx-10-9-mavericks-how-to/) :

### [Homebrew](https://digitizor.com/install-homebrew-osx-el-capitan/)
Installing Homebrew on Mac OS X prior to El Capitan (that is Yosemite, Mavericks and others) used to be a breeze. But with a new change in OS X El Capitan called SIP - installing Homebrew has become a bit complicated.

There are two parts to this tutorial. If you want to uninstall or delete Homebrew first and then re-install it on El Capitan then follow Part 2 of this tutorial below. However, if you are doing a fresh installation of El Capitan then follow the steps outlined in Part 1 of this tutorial.kj

With the release of macOS Sierra the Apache module is now not built by default. If you want to build it on your system you have to install php with the --with-httpd option. See  brew options php70 for more details.

#### Part 1: How to install fresh copy of Homebrew in OS X El Capitan
Step 1 - Install XCode by downloading it from here. This is needed for installing the XCode command line tools which in turn is needed by Homebrew. You might skip this step if you already have XCode installed.

Quick Note - If you already have XCode installed then go to STep 2. Also, You can skip this step and jump to Step 3 instead and see if the Homebrew installer complains about XCode command line tools. If it does, then come back to this step and continue.

**Step 2** - Install Command Line tools by running the following command in terminal:

```bash
xcode-select --install
```

**Step 3** - Now, you need to get a fresh copy of Homebrew and then run the install script. You can perform both these tasks using this one command in the terminal app:

```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

If it complains about permission issues, then you have to fix it before you can continue. This is an additional thing that you need to do in Mac OS X El Capitan because Apple [introduced this new feature](https://developer.apple.com/library/prerelease/ios/documentation/Security/Conceptual/System_Integrity_Protection_Guide/System_Integrity_Protection_Guide.pdf) called System Integrity Protector.  Here is a guide to how you can [fix this permission issue with Homebrew on OS X El Capitan](http://digitizor.com/2015/10/01/fix-homebrew-permissions-osx-el-capitan/).

After you have fixed the permission issue, re-run the command above in the terminal to begin the Homebrew installation process.

**Step 4** - Run the Brew Doctor utility to check for issues or warnings in the terminal

```bash
brew doctor
```

If it shows  errors, then you need to fix them before you can continue. You might, however, skip any warnings that the doctor tool shows.

All the apps and libraries that you install using Homebrew are located in this folder: `/usr/local/Cellar`

After Homebrew is installed, you can use some of the following commands to perform different tasks with it:

1. You can search for an application using: `brew search`
1. You can install a new application using: `brew install <application-name>` (for example wget)
1. In order to list all apps installed by Homebrew, you can use: brew list
1. For removing an app installed via Homebrew: `brew remove <application-name>`
1. Or use [homebrew-rmtree](https://github.com/beeftornado/homebrew-rmtree)
1. Homebrew can be updated using: brew update
1. `man brew` will show other switches and command options for Homebrew.

#### Part 2: How to uninstall and re-install Homebrew in OS X El Capitan

**Step 1** - First you will have to delete the Cellar folder of Homebrew that is usually available in the /usr/local folder. To do this, you need to run the following command in the terminal:

```bash
rm -rf /usr/local/Cellar /usr/local/.git && brew cleanup
```

Please note - If the above command throws a permissions error then you need to read this article to [fix the Homebrew permissions in OS X El Capitan](http://digitizor.com/2015/10/01/fix-homebrew-permissions-osx-el-capitan/).

**Step 2** - Install Xcode &amp; XCode command line tools. This is an optional step but for many users, installing the tools mentioned in this step is mandatory. So in order to check, if you have to really perform this step, what you can do is quickly skip to Step 3 and run the command mentioned on that step - if you see success then you can safely skip this step, else continue here:

First download and install Xcode from this link - <https://itunes.apple.com/au/app/xcode/id497799835?mt=12>

Next, install Xcode command line tools by running the following command in your terminal:

```bash
xcode-select --install
```

If it complains about permissions, then use sudo and run the same command again.

**Step 3** - Now that you have a cleaned-up Brew data folder, you need to fetch a fresh copy of Homebrew and start the installation process by running this command in the terminal:

```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

You might be prompted for your root password and when that happens, enter the password and continue. You can find some sample output towards the end of this post.

**Step 4** - After the installation completes, you should run the doctor utility on brew to see if there were any issues with the Homebrew installation. This can be done by running the following command:


```bash
brew doctor
```

If it returns any error, try fixing them. If you see just warnings then you could ignore them.

At this point you have succesfully installed Homebrew on El Capitan and you can use the commands mentioned above to perform various operations.

***   ***   ***   ***   ***   ***   ***   ***   ***

### Xcode
```bash
    xcode-select --install
```

* Reboot your system (between steps)

* Apache
* PHP
* MySQL
* PEAR/PECL/other
* RVM/Ruby

### Apache
check to see if apache is running; go to `http://localhost`, if not start apache:

and/or again

```bash
    sudo apachectl -k restart
```

One probably needs to restore the Apache configuration. You’ll need to fix these things in `/etc/apache2/httpd.conf`:


read only file, so change permissions, something like:

```bash
sudo chmod 775 httpd.conf
```

or try to edit like this:

```bash
sudo v httpd.conf
```

- re-enable the loading of any modules you need
- re-enable the include of vhost.conf and ssl.conf if needed
- restore the &lt;Directory &hellip;&gt; statement so your development directory will work again

```bash
<Directory />
    # Require all granted
    Options Indexes FollowSymLinks Includes
    AllowOverride All
    Order deny,allow
    Allow from all
</Directory>
```

### PHP
Check to see [if PHP works](http://localhost/), maybe check upon `/etc/apache2/httpd.conf`, see if the `loadModule php5_module` matches the current one installed. It can look like:

```bash
LoadModule php5_module libexec/apache2/libphp5.so
```

or like this:

```bash
LoadModule php5_module /usr/local/php5/libphp5.so
```

when you are using the version from [http://php-osx.liip.ch/](http://php-osx.liip.ch/), and do/redo the “One Line Installation”, something like this:

```bash
curl -s https://php-osx.liip.ch/install.sh | bash -s 5.6
```

### RVM and Ruby
reinstall RVM and Ruby (if necessary):

* maybe uncomment those paths directions in `.bashrc`, `.profile` and `.bash_profile`
* uninstall RVM

```bash
    rvm implode
```

also close (and re-open if needed) the terminal afterwards.

* now [reinstall RVM with ruby](http://rvm.io/rvm/install)

```bash
    \curl -sSL https://get.rvm.io | bash -s stable --ruby
```

quit terminal, maybe reboot, when all works, be happy installing gems

### Gems

* [compass with sass](http://compass-style.org/help/)

```bash
    gem install compass
```

* [autoprefixer](https://github.com/ai/autoprefixer)

```bash
    gem install autoprefixer-rails
```

### Node and NPM
Maybe redownload Node <https://nodejs.org/en/download/> and/or [fix permissions](https://docs.npmjs.com/getting-started/fixing-npm-permissions).

***

## Git
* [adding git autocomplete to bash on os x](http://buddylindsey.com/adding-git-autocomplete-to-bash-on-os-x/)
    * [git-completion.bash](https://raw.github.com/git/git/master/contrib/completion/git-completion.bash)
* [adding git data to your bash prompt](http://buddylindsey.com/adding-git-data-to-your-bash-prompt/)
    * [git-prompt.sh](https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh)

