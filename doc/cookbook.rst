How do I...?
------------

Deploy to an Alternate/Temporary Location
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The ``manage.py deploy`` command can deploy to a custom location, accepting the ansible inventory file through the ``-i`` flag::

  $ python manage.py deploy --dest=custom -i /tmp/my_private_inventory_file

.. seealso:: `Ansible Inventory Files <http://docs.ansible.com/ansible/intro_inventory.html>`_, and the existing inventory fiels in the ``ansible/`` subdirectory



