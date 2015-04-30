.. _database:

Database Management
===================

Using a Database In Your Code
-----------------------------

Weber includes the SQLAlchemy_ framework, which provides an abstraction level over different kinds of SQL databases. Weber encourages the use of SQLAlchemy's ORM framework, which maps Python objects to database tables, allowing you to access database records as if they were regular Python objects.

A file named `model.py` is included inside the application directory. This file holds the database instance, called `db`, and the definitions of the classes which are serialized to the database.
`model.py` can be imported and used by any module inside your application.

The database URI can be found in `app.py`

Database Maintenance
--------------------

Weber encapsulates common actions regarding the database that need to be done during development and deployment.

During Development
^^^^^^^^^^^^^^^^^^

Once the database URI has been configured, you can issue the command `./manage.py db ensure` which will create the appropriate schema based on your SQLAlchemy defined models. The command `./manage.py db drop` will completely drop your database.

During Deployment
^^^^^^^^^^^^^^^^^

One of the most error prune steps in deploying database based applications is upgrading the existing database in production. Weber includes Alembic_ framework which, based on the difference between the SQLAlchemy models that were last deployed to production and your current SQLAlchemy models, generates the needed SQL instructions to upgrade your database.

Before deploying production version, checkout to your last deployed version in your local repository. Run `./manage.py drop; ./manage.py upgrade`. Your current schema in your development database should look exactly like the schema in production. At this stage it's recommended that you use your application to generate some data in the development database, as you'll want to make sure that the upgrade process works as expected with non-empty database.

After generating some data, checkout the code of the version which you would like to deploy to production, run `./manage.py revision` and restart your application. Test your application to make sure that everything survived the upgrade as expected. A file containing the upgrade instructions should be generated in `migrations/versions/[some_hash].py`. Review this file and make sure you don't find anything unexpected in the upgrade instructions. Now, commit this file to git and deploy to production.

Repeat this process for each version you deploy to production.


.. _SQLAlchemy: http://www.sqlalchemy.org/
.. _Alembic: https://alembic.readthedocs.org/en/latest/
