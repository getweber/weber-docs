.. _background_tasks:

Running Background Tasks
========================

A web application often needs to run tasks asynchronously. Weber-Backend (and above) includes the Celery_ framework.

``flask_app/tasks.py`` contains the code needed to set up Celery. You can place your asynchronous tasks in there.

Note that Weber uses Redis_ as a broker for Celery, which is less resilient to power failures than RabbitMQ_. We chose to use Redis due to the fact that at the time of the writing, librabbitmq_ doesn't support Python 3 yet, and we wanted weber to support Python 3 out of the box. If you do not intend to use Python 2 then you may want to use RabbitMQ as your broker.

It is possible to use a backend to store the results of Celery tasks, allowing the caller to wait for their completion. However, waiting for a task to finish will cause the HTTP server worker to hang until completion, so it doesn't make much sense in weber. Tasks that require status tracking should either send an email on completion or write their status to the database.

Deployment
----------

Running the test server also takes care of running a Celery worker. However, you should manually install and launch Redis on your development machine.

Ansible takes care of installing and launching both Redis and a Celery worker on the production machine. This also applies to Vagrant.

Docker takes care of installing and launching both Redis and a Ceelry worker inside the container.

.. _Celery: http://www.celeryproject.org/
.. _Redis: http://redis.io/
.. _RabbitMQ: https://www.rabbitmq.com/
.. _librabbitmq: https://github.com/celery/librabbitmq