Myanmar Keyboards
=================

#Introduction

- This package contains two types of Burmese Keyboard, Unicode and ZawGyi-One.

#Installation

- Type the following command one after another.
```
$ git clone https://github.com/kaiz16/mm-kb.git
$ cd mm-kb
$ sudo make install
$ ibus-daemon -rdx
$ im-config -n ibus
$ gsettings set org.freedesktop.ibus.panel show 0
```
Now you can add the keyboard as follow.

- Click on **Text Entry Settings...**

- Click on **"+"** button and search **Burmese** input. You will see Burmese, Burmese (mm-myanmar3), and Burmese (mm-zawgyi).

- Add **Burmese (mm-myanmar3)** for ***Unicode*** keyboard and **Burmese (mm-zawgyi)** for ***ZawGyi-One*** keyboard.

- Now you can change keyboard layout by pressing (**Super + Space**) key.

- Whatever you are using, Burmese (mm-myanmar3) or Burmese (mm-zawgyi), you can switch between Burmese and English characters by a single press of **Left Shift** key.

##Changing System Fallback Font

After installation, your system font will be changed into **ZawGyi-One**. If you want to switch to **Unicode** fonts, search **Myanmar Font Switcher** in Unity Dashboard and open it. You can change the font you want in there.

##Credits

```
Naing Ye` Minn
naingyeminn@gmail.com
nym@ubuntu-mm.net
FreeNode IRC : yeminn
website : http://nym.ubuntu-mm.net
```
