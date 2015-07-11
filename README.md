# WarpSpeed Vagrant Configuration

We make web deployment easy. For complete information, please visit: http://warpspeed.io

## Vagrant

Vagrant is a tool that allows you to quickly and easily create virtual environments. For more information and to download Vagrant, visit: https://www.vagrantup.com.

## WarpSpeed Vagrantfile Usage

WarpSpeed uses vagrant to provide a development enviroment that matches the WarpSpeed production environment configuration. First, download and install Vagrant using the link provided in the section above. Next, clone this repository to your computer. Then, open a terminal and cd to the cloned repository location. Finally, type `vagrant up` to create a local WarpSpeed development environment.

## Customize Installation Options

If desired, you can customize the installation options for your vagrant environment by modifying the shell provisioner arguments. Just pass additional arguments that are valid WarpSpeed installers and they will run automatically.

## Windows Users

Windows doesn't support NFS, so the Vagrantfile needs to be slightly different. If you are a Windows user, please delete the `Vagrantfile` and rename `Vagrantfile-windows` to `Vagrantfile`.

## License

&copy; Turner Logic, LLC. Distributed under the GNU GPL v2.0.
