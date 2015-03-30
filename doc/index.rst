.. weber documentation master file, created by
   sphinx-quickstart on Sat Mar 14 21:12:20 2015.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Weber
=====

What is Weber?
--------------

Weber is a set of template projects for starting production-ready webapps, enabling rapid development and deployment.

Weber provides:

#. Backend code based on Flask_
#. Out-of-the-box deployment via Ansible_, Vagrant_ or Docker_
#. Unit tests foundation for testing either the fully deployed app or a mock using Flask-Loopback_
#. Background jobs using Celery_ (Optional)
#. User management using Flask-Security_ (Optional)
#. Database connectivity and modeling using Flask-SQLAlchemy_ (Optional)
#. Frontend foundation using Ember.js_ (Optional)


Getting Started
===============

Choosing the right variation of Weber
-------------------------------------

The first step is to decide which variation of Weber should you use for starting your project. Currently, Weber provides 3 variations:

#. weber-minimal_ - Contains a backend based on Flask_ as well as deployment tools for the platforms specified above. This template is the most simple one to work with and requires that you'll be familiar with Flask_ and the deployment framework of your choice. This template is recommended for very basic web services or web applications. Web applications created from this template will use server-side template rendering using the Jinja2_ framework.
#. weber-backend_ - In addition to everything contained in weber-minimal, weber-backend also contains integration with SQLAlchemy_ using Flask-SQLAlchemy_ and the ability to queue background jobs using Celery_. It also contains a tool for migrating production databases to newer schemas and optinal user management using Flask-Security_. In order to use this template you should also be familiar with SQLAlchemy_ and the SQL database of your choice. This template is recommended for more complex web services or web applications that requires a use of a database.
#. weber-frontend_ - This template is intended for fully interactive "single page" web applications. The use of Jinja2_ to render web pages is discouraged with this template. Instead, the backend is expected to deliver the client side Ember.js_ application as well provide API for the application. Templates should be rendered by the client using HTMLBars_, which is a superset of Handlebars_. This template makes heavy use of client side frameworks such as Ember.js_, ember-cli_, ember-data_, Sass_ and Bootstrap_. You should be familiar with these frameworks if you intend to use weber-frontend.

Note that once you fork one of the templates, there's no simple way to "upgrade" it to the next level of Weber. You should consider carefully which template is best suited to your needs.

Bootstrapping
-------------

After you decide which variation of Weber to use, the first step would be to fork it in Github. When forking, remember to rename weber to your project's name.

Once forked, the first thing you should do is to run the test server to make sure that everything is working as expected. However, note that Weber use Python 2.7 by default. If you wish to use a different Python version, see :ref:`alternative_python` before proceeding.

Next, you should invoke ``manage.py testserver``. Depending on your variant of Weber, this script my only run the test server, or a tmux instance running the multiple components needed for serving the application. Surf to ``http://localhost:8000`` to see that everything works.

Now it's time to actually write code. You might want to proceed to :ref:`project_layout`.

Contents
========

.. toctree::
   :maxdepth: 2

   project_layout
   dependencies
   manage_app
   background_tasks
   user_management
   database
   testing
   alternative_python


Acknowledgements
================

Many special thanks and credit goes to `Roey Darwish Dror <https://github.com/r-darwish>`_ for helping out with lots of features, bug fixes, and documentation.



Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`

.. _Ansible: http://www.ansible.com/home
.. _Vagrant: https://www.vagrantup.com/
.. _Docker: https://www.docker.com/
.. _Flask: http://flask.pocoo.org/
.. _Flask-Loopback: https://github.com/vmalloc/flask-loopback
.. _Ember.js: http://emberjs.com/
.. _Flask-SQLAlchemy: https://pythonhosted.org/Flask-SQLAlchemy/
.. _SQLAlchemy: http://www.sqlalchemy.org/
.. _weber-minimal: https://github.com/vmalloc/weber-minimal
.. _weber-backend: https://github.com/vmalloc/weber-backend
.. _weber-frontend: https://github.com/vmalloc/weber-frontend
.. _Jinja2: http://jinja.pocoo.org/docs/dev/
.. _HTMLBars: http://talks.erikbryn.com/htmlbars-emberconf/#/
.. _Handlebars: http://handlebarsjs.com/
.. _ember-cli: http://www.ember-cli.com/
.. _ember-data: http://emberjs.com/guides/models/
.. _Sass: http://sass-lang.com/
.. _Bootstrap: http://getbootstrap.com/
.. _Celery: http://www.celeryproject.org/
.. _Flask-Security: https://pythonhosted.org/Flask-Security/
