Following the [Analytics Engineering Bootcamp](https://www.udemy.com/course/analytics-engineering-bootcamp/) on [Udemy](https://www.udemy.com)
by [Rahul Prasad](https://www.udemy.com/user/12d74614-7695-494c-bba9-d61769623e21/) and [David Badovinac](https://www.udemy.com/user/david-badovinac-3/), but using the PostgreSQL database on localhost.

### Setup

```
git clone https://github.com/maprihoda/analytics_engineering_bootcamp_postgres.git
cd analytics_engineering_bootcamp_postgres
```


#### Create the database
```
psql postgres
CREATE DATABASE analytics_engineering_bootcamp_postgres;
exit
```

#### Create and populate data lake schema
```
psql -U your_username -d analytics_engineering_bootcamp_postgres
CREATE SCHEMA dl_northwind;
SET search_path TO dl_northwind;
\i northwind.sql
exit
```


#### Create the virtual environment with [pyenv](https://github.com/pyenv/pyenv):
```
pyenv virtualenv 3.10.10 analytics_engineering_bootcamp_postgres
pip install dbt-postgres
```

#### Copy and update the profile yml file
```
cp profiles-example.yml ~/.dbt/profiles.yml
open ~/.dbt/profiles.yml
```
After opening the `~/.dbt/profiles.yml` file, update it by filling in your database username and password.

Verify that the setup is complete:
```
dbt debug
dbt run
```

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
