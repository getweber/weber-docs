.. _alternative_python:

Using an alternative Python version
===================================

By default, weber looks for a Python executable named ``python2.7``. This can be overridden by changing _lib/bootstrapping.py. For example, it can be set to ``python3.4``.

If you use an alternative interpreter then remember to add it to ``ansible/roles/common/vars/main.yml``.