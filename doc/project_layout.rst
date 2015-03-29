.. _project_layout:

Project Layout
==============

Inside the project there are several key files and directories:

- **.ansible-env** - This directory is created when building your project. It contains the latest version of Ansible_.
- **.env** - This directory is created when building your project. It contains the virtualenv_ needed for running your project. Usually there's no need for you to manually activate the virtualenv, as ``manage.py`` will do that for you. If you ever decide to switch the version of Python then you need to delete this directory in order to bootstrap a clean new environment.
- **_lib** - Contains the library needed to bootstrap your project environment. Generally you don't need to change anything here unless you want :ref:`to change the version of Python <alternative_python>`.
- **ansible** - Contains the Ansible playbook. You should look into this directory if you wish to implement some custom deployment steps, such as installing non-Python packages.
- **deps** - Contains the Python dependencies. See :ref:`dependencies`.
- **flask_app** - Contains the actual backend code in Flask_.
- **migrations** - ?
- **scripts** - ?
- **static** - Contains static files. See :ref:`static_dir`.
- **tests** - Contains tests. See :ref:`testing`.
- **webapp** - Exists only in weber-frontend. Contains the client side application written in Ember.js_. The layout in this directory is managed by ember-cli_, npm_, Bower_ and Broccoli_.
- **manage.py** - This is the main app to manage the building, testing and deployment of your project. See :ref:`manage_app`.

.. _static_dir:

The Static Directory
--------------------

This static directory exists in all variants of Weber, but it plays a different role in weber-frontend. In weber-backend and weber-minimal, this directory is tracked by Git. You should modify it if you want to change or add static assets.

In weber-frontend this directory is created as part of the build process. It isn't tracked by Git. The static assets can be found ``webapp/public/assets``, which is a directory tracked by Git. If you ever wish to add or modify the static assets in weber-frontend remember to modify ``webapp/public/assets``.

.. _Ansible: http://www.ansible.com/home
.. _Flask: http://flask.pocoo.org/
.. _ember-cli: http://www.ember-cli.com/
.. _Ember.js: http://emberjs.com/
.. _virtualenv: https://virtualenv.pypa.io/en/latest/
.. _Broccoli: https://github.com/broccolijs/broccoli
.. _npm: https://www.npmjs.com/
.. _Bower: http://bower.io/