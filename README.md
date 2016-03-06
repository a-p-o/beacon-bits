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

# Start passenger
rvmsudo bundle exec passenger start
```

# Authors

* Marisa Gomez
* Katie Porterfield
* Alex Ordonez <me@ordonezalex.com>
