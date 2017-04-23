import dj_database_url
from codingschool.settings.base import *

DEBUG = True
ALLOWED_HOSTS = ['guarded-hamlet-19858.herokuapp.com']

db_from_env = dj_database_url.config(conn_max_age=500)
DATABASES['default'].update(db_from_env)
