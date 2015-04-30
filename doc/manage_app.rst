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

Docker
^^^^^^

Running ``manage.py docker build`` builds a Docker_ image for running the application. The Docker image isn't provisioned by Ansible_, but the APT packages list is taken from the Ansible file in ``ansible/roles/common/vars/main.yml``. Despite the official Docker recommendation of "one process per image", we believe that some components should be packed in a single container. The Docker container contains uWSGI_, NGINX_ and a Celery_ worker in case it's included in your Weber variation. A database container should be linked to this container.

Running ``manage.py docker start`` will start your image, as well as a database image if needed, by using docker-compose_

.. note:: Contrary to Ansible, Docker client and Docker Compose aren't installed by manage.py. You should manually install the Docker client (and docker-compose if you wish to use the docker start command) manually on your development machine.

.. _Ansible: http://www.ansible.com/home
.. _Vagrant: https://www.vagrantup.com/
.. _Docker: https://www.docker.com/
.. _NGINX: http://nginx.org/en/
.. _uWSGI: https://uwsgi-docs.readthedocs.org/en/latest/
.. _docker-compose: https://docs.docker.com/compose/
.. _Celery: http://www.celeryproject.org/
