# Beacon Bits

---

### Deploy

```
# Go to directory
cd /var/www/beaconbits/beacon/

# Make sure passenger is stopped
rvmsudo bundle exec passenger stop

# Pull new code
git pull

# Compile assets
bundle exec rake assets:precompile

# Bundle for production deployment
bundle install --deployment --without development test

# Migrate database
bundle exec rake db:migrate

# Start passenger
rvmsudo bundle exec passenger start
```

```
cd /var/www/beaconbits/beacon/
rvmsudo bundle exec passenger stop
git pull

bundle exec rake assets:precompile
bundle install --deployment --without development test
bundle exec rake db:migrate
rvmsudo bundle exec passenger start
```

# Authors

* Marisa Gomez
* Katie Porterfield
* Alex Ordonez <me@ordonezalex.com>
