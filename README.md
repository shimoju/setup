# Setup my machine

## Install

```
$ git clone https://github.com/shimoju/setup.git
$ sudo gem install bundler --no-document
$ bundle install --path vendor/bundle
```

## Run

```
$ bundle exec itamae local roles/all.rb -y nodes/my_mac.yml
$ bundle exec rake spec
```
