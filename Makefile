PHP = /usr/bin/php

install: composer.phar vendor

update:
	$(PHP) composer.phar update;

uninstall:
	rm composer.lock -f;
	rm vendor -rf;
	rm composer.phar -f;

composer.phar:
	$(PHP) -r "eval('?>'.file_get_contents('https://getcomposer.org/installer'));";
vendor:
	$(PHP) composer.phar install;