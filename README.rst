================
 Doit in Docker
================


This is a very simple wrapper to run the awesome tool doit_ from a
container, to avoid having to install Python or the ``doit`` package.

Usage
=====

Simply run it as::

  docker run -it -v $(pwd):/target waltermoreira/doit_in_docker doit help

If you need to use ``docker`` in the ``dodo.py`` file, you need to
mount the docker socket into the container::

  docker run -it \
    -v $(pwd):/target \
    -v /var/run/docker.sock:/docker.sock \
    waltermoreira/doit_in_docker doit help


Convenient usage
================

Instead of typing the full docker command every time, create an alias
with::

  eval $(docker run doit_in_docker /alias)

Then you can use the command ``doit_in_docker`` as::

  doit_in_docker doit help


Acknowledgments
===============

Eduardo Schettino: for the great doit_ tool.


License
=======

MIT


.. _doit: http://pydoit.org/index.html
