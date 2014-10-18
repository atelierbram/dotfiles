# dotfiles and faster after-upgrade OS setup

## system upgrade reminders
* before upgrading back-up `/etc/apache2/httpd.conf`
* after system upgrade several webdeveloper server things get's lost on Mac OS
* they need to get [repaired](http://remonpel.nl/2013/10/repair-osx-webdevelopment-server-after-osx-upgrade/)

### TODO

* Backup your system
* Upgrade OSX
* Upgrade Xcode and run it at least once, [installing the commandline tools from terminal](http://www.computersnyou.com/2025/2013/06/install-command-line-tools-in-osx-10-9-mavericks-how-to/) :

```
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

```
    sudo apachectl restart
```

One probably needs to restore the Apache configuration. You’ll need to fix these things in `/etc/apache2/httpd.conf`:


read only file, so change permissions, something like:

```
sudo chmod 775 httpd.conf
```

or try to edit like this:

```
sudo v httpd.conf
```

- re-enable the loading of any modules you need
- re-enable the include of vhost.conf and ssl.conf if needed
- restore the &lt;Directory &hellip;&gt; statement so your development directory will work again

```
<Directory />
    # Require all granted
    Options Indexes FollowSymLinks Includes
    AllowOverride All
    Order deny,allow
    Allow from all
</Directory>
```


### PHP
check to see if PHP works, probably not then go to [http://php-osx.liip.ch/](http://php-osx.liip.ch/), and do the One Line Installation, something like this:

```
    curl -s http://php-osx.liip.ch/install.sh | bash -s 5.5
```

### RVM and Ruby
reinstall RVM and Ruby (if necessary):

* maybe uncomment those paths directions in `.bashrc`, `.profile` and `.bash_profile`
* uninstall RVM

```
    rvm implode
```

also close (and re-open if needed) the terminal afterwards.

* now [reinstall RVM with ruby](http://rvm.io/rvm/install)

```
    \curl -sSL https://get.rvm.io | bash -s stable --ruby
```

quit terminal, maybe reboot, when all works, be happy installing gems

### Gems

* [compass with sass](http://compass-style.org/help/)

```
    gem install compass
```

* [autoprefixer](https://github.com/ai/autoprefixer)

```
    gem install autoprefixer-rails
```

***

## Git
* [adding git autocomplete to bash on os x](http://buddylindsey.com/adding-git-autocomplete-to-bash-on-os-x/)
    * [git-completion.bash](https://raw.github.com/git/git/master/contrib/completion/git-completion.bash)
* [adding git data to your bash prompt](http://buddylindsey.com/adding-git-data-to-your-bash-prompt/)
    * [git-prompt.sh](https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh)

