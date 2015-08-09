.. _manage_app:

The Management Application
==========================

manage.py is the main application for managing your web application. It has several commands for handling difference scenarios.

Developing
----------

Developing is done by running ``manage.py testserver``. The directory ``.env`` will be created and the Flask testing server will be executed. Depending on the variation of Weber, additional components might be launched in different tmux windows.

Testing
-------

To be written.

Deploying
---------

Deploying can be done to multiple targets

Ansible
^^^^^^^

Using Ansible_ is the recommended way to deploy your application to a production or staging machine. Running ``manage.py deploy --dest staging`` or ``manage.py deploy --dest production`` will deploy to the environment specified in ``weber-frontend/ansible/inventories/production`` or ``weber-frontend/ansible/inventories/staging``. The Ansible flags ``--sudo`` and ``--ask-sudo-pass`` can be specified in this command.

The default deployment uses uWSGI_ server behind an NGINX_ server.

.. note:: manage.py uses the latest version of Ansible from pip. There's no need to manually install Ansible in the production machine.

Vagrant
^^^^^^^

Using Vagrant_ is recommended to make sure that your application can be deployed to a clean environment before deploying to production or even staging machines. Running ``manage.py deploy --dest vagrant`` will spawn a new Vagrant machine and provision it using the Ansible playbook. Port 8000 will be forwarded to the NGINX_ server running inside the machine.

.. note:: Contrary to Ansible, Vagrant isn't installed by manage.py. You should manually install Vagrant on you development machine if you with to use it.

.. _Ansible: http://www.ansible.com/home
.. _Vagrant: https://www.vagrantup.com/
.. _NGINX: http://nginx.org/en/
.. _uWSGI: https://uwsgi-docs.readthedocs.org/en/latest/
.. _Celery: http://www.celeryproject.org/
