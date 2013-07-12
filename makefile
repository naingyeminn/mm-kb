install: uninstall
	ibus-table-createdb -n /usr/share/ibus-table/tables/mm-myanmar3.db -s ./src/tables/mm-myanmar3.txt
	ibus-table-createdb -n /usr/share/ibus-table/tables/mm-zawgyi.db -s ./src/tables/mm-zawgyi.txt
	cp -fv ./src/icons/*.svg /usr/share/ibus-table/icons
	test -d /usr/share/fonts/mm || mkdir -p /usr/share/fonts/mm && cp ./src/fonts/*.ttf /usr/share/fonts/mm

uninstall:
	rm -fv /usr/share/ibus-table/tables/mm*
	rm -fv /usr/share/ibus-table/icons/mm-myanmar3.svg
	rm -fv /usr/share/ibus-table/icons/mm-zawgyi.svg
	rm -rfv /usr/share/fonts/mm

.PHONY: install uninstall
