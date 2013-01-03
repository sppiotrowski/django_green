#!/usr/bin/env python
# Django Manage command that uses the dev settings module
import os
import sys

if __name__ == "__main__":
    os.environ.setdefault("DJANGO_SETTINGS_MODULE", "django_green.settings.dev")

    from django.core.management import execute_from_command_line

    execute_from_command_line(sys.argv)
