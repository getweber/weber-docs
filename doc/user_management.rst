.. _user_management:

Managing Users
==============

Weber-Backend (and above) includes the Flask-Security_ framework to manage user authentication.

In Weber-Backend, Flask-Security automatically registers its views for user management, so all you have to do is suit the templates to your needs.

The case is a bit different in Weber-Frontend. Since Weber-Frontend doesn't contain any templates rendered by the server, we disabled Flask-Security's built in views. Instead, the /login view returns an authentication token. We included the ember-simple-auth_ framework and wrote an authenticator and an authorizer for the token authentication together with a login route. Basically all you need to do is use the ``AuthenticatedRouteMixin`` to indicate that a route requires authentication. In the backend side, the protected APIs should be decorated by Flask-Security's ``auth_token_required`` decorator.

.. _Flask-Security: https://pythonhosted.org/Flask-Security/
.. _ember-simple-auth: https://github.com/simplabs/ember-simple-auth
