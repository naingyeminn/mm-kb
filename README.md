Myanmar Keyboards
=================

## Introduction

- This package contains two types of Burmese Keyboard, Unicode and ZawGyi-One.

## Installation

- Type the following command one after another.
```
$ mm_kb=https://github.com/naingyeminn/mm-kb/archive/master.zip
$ wget $mm_kb 2> /dev/null || curl -OL $mm_kb
$ unzip master.zip
$ cd mm-kb-master
$ sudo apt install make ibus-table -y
$ sudo make install
$ ibus-daemon -rdx
$ im-config -n ibus
```

**Or**

One-line installation

```
bash <(wget -qO - http://tiny.cc/mm-kb-install 2> /dev/null || curl -L http://tiny.cc/mm-kb-install)
```

Now you can add the keyboard as follow.

- Go to **Settings > Region & Language**

- Click on **"+"** button and search **Burmese** input. You will see Burmese, Burmese (mm-smart), Burmese (mm-myanmar3), and Burmese (mm-zawgyi).

- Add **Burmese (mm-myanmar3)** or **Burmese (mm-smart)** for ***Unicode*** keyboard and **Burmese (mm-zawgyi)** for ***ZawGyi-One*** keyboard.

- Now you can change keyboard layout by pressing (**Super + Space**) key.

- Whatever you are using, Burmese (mm-myanmar3/mm-smart) or Burmese (mm-zawgyi), you can switch between Burmese and English characters by a single press of **Left Shift** key.

## Changing System Fallback Font

After installation, your system font will be changed into **ZawGyi-One**. If you want to switch to **Unicode** fonts, search **Myanmar Font Switcher** by clicking the grid button at the bottom of the dash and run it. You can change the font you want in there.

## Uninstallation
```
$ cd mm-kb-master
$ sudo make uninstall
```

## Contact

```
Naing Ye` Minn
naingyeminn@gmail.com
website : http://naingyeminn.com
```

## Acknowledgement

Thank you for your input and solution for Zawgyi Layout issue, Bro [Kaung Mon Htay](https://github.com/kaiz16).
