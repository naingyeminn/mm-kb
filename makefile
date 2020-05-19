install: uninstall
	ibus-table-createdb -n /usr/share/ibus-table/tables/mm-myanmar3.db -s ./src/tables/mm-myanmar3.txt
	ibus-table-createdb -n /usr/share/ibus-table/tables/mm-smart.db -s ./src/tables/mm-smart.txt
	ibus-table-createdb -n /usr/share/ibus-table/tables/mm-zawgyi.db -s ./src/tables/mm-zawgyi.txt
	ibus-table-createdb -n /usr/share/ibus-table/tables/mm-zawnicode.db -s ./src/tables/mm-zawnicode.txt
	ibus-table-createdb -n /usr/share/ibus-table/tables/shn-standard.db -s ./src/tables/shn-standard.txt
	ibus-table-createdb -n /usr/share/ibus-table/tables/shn-panglong.db -s ./src/tables/shn-panglong.txt
	cp -fv ./src/icons/*.svg /usr/share/ibus-table/icons
	test -d /usr/share/fonts/mm || mkdir -p /usr/share/fonts/mm && cp ./src/fonts/*.ttf /usr/share/fonts/mm
	test -d /usr/share/mmfs || mkdir -p /usr/share/mmfs && cp ./src/mmfs/* /usr/share/mmfs/
	ln -s /usr/share/mmfs/mmfs /usr/local/bin/mmfs
	cp ./src/mmfs/myanmar-font-switcher.desktop /usr/share/applications/

uninstall:
	rm -fv /usr/share/ibus-table/tables/mm*
	rm -fv /usr/share/ibus-table/tables/shn*
	rm -fv /usr/share/ibus-table/icons/mm-myanmar3.svg
	rm -fv /usr/share/ibus-table/icons/mm-zawgyi.svg
	rm -rfv /usr/share/fonts/mm
	rm -rfv /usr/share/mmfs
	rm -fv /usr/share/applications/myanmar-font-switcher.desktop
	rm -fv /usr/local/bin/mmfs
	rm -fv ~/.config/fontconfig/fonts.conf

.PHONY: install uninstall
