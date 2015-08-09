.. _dependencies:

Dependencies
============

Backend Python Dependencies
---------------------------
Backend dependencies are defined in the ``deps`` directory. It consistent of 3 files:

- ``base.txt`` - Dependencies needed by :ref:`manage.py <manage_app>`.
- ``develop.txt`` - Dependencies needed for development and testing. These dependencies will not be deployed to the production environment.
- ``app.txt`` - Dependencies needed by your Flask application.

The testing server monitors these files to pick up changes, so you usually won't have to restart it when you modify these files.

Backend Other Dependencies
--------------------------

Non-Pythonic dependencies should be installed manually on the development machine. Ansible_ will take care of installing these dependencies in the production environment, so they have to be specified in ``ansible/roles/common/vars/main.yml``.

Frontend Dependencies
---------------------

Frontend dependencies are only handled by weber-frontend. They're specified in ``webapp/bower.json`` and ``webapp/package.json``. The test server runs Broccoli_ to monitor these files for changes, so you usually won't have to restart it when you modify these files.

.. _Ansible: http://www.ansible.com/home
.. _Broccoli: https://github.com/broccolijs/broccoli
