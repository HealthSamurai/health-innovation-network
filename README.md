# [DEPRECATED] this project is no longer being actively developed

# Health Innovation Network

## Install

```sh
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
rbenv install 2.2.2
gem install bundler
git clone git@github.com:HealthSamurai/health-innovation-network.git
cd ~/health-innovation-network
bundle install
```

## Deploy

```sh
heroku login
heroku git:remote -a hin
git push heroku master
```

### DB

#### Migrate

    heroku run rake db:migrate

#### Seed
##### Development
    bundle exec mailcatcher
    bundle exec rake db:migrate
    
##### Production
    heroku run rake db:seed
