Myanmar Keyboards
=================

## Introduction

- This package contains two types of Burmese Keyboard, Unicode and ZawGyi-One.

## Installation

- Type the following command one after another.
```
$ curl -OL https://github.com/naingyeminn/mm-kb/archive/master.zip
$ unzip master.zip
$ cd mm-kb-master
$ sudo apt install make
$ sudo make install
$ ibus-daemon -rdx
$ im-config -n ibus
$ dconf load / < src/mm-zawgyi.ini
```
Now you can add the keyboard as follow.

- Click on **Text Entry Settings...**

- Click on **"+"** button and search **Burmese** input. You will see Burmese, Burmese (mm-myanmar3), and Burmese (mm-zawgyi).

- Add **Burmese (mm-myanmar3)** for ***Unicode*** keyboard and **Burmese (mm-zawgyi)** for ***ZawGyi-One*** keyboard.

- Now you can change keyboard layout by pressing (**Super + Space**) key.

- Whatever you are using, Burmese (mm-myanmar3) or Burmese (mm-zawgyi), you can switch between Burmese and English characters by a single press of **Left Shift** key.

## Changing System Fallback Font

After installation, your system font will be changed into **ZawGyi-One**. If you want to switch to **Unicode** fonts, search **Myanmar Font Switcher** in Unity Dashboard and open it. You can change the font you want in there.

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
