build:
	python setup.py build
install:
	python setup.py install --force --root=$(DESTDIR) \
		--no-compile -O0 --install-layout=deb
clean:
	python setup.py clean
	/bin/rm -rf build *.egg-info/
deb:
	debuild -b -us -uc

