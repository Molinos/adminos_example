# Adminos Example Project

This is an example of using gem [adminos](https://github.com/Molinos/adminos).


## Dependencies
* rvm
* ruby 2.5.1
* rails 5.2
* postgresql 10.x

## Get started

```sh
bundle install
rails db:create db:create
rails db:create db:migrate
rails db:create db:setup
```

```sh
rails s
./bin/webpack-dev-server
```

## Deployment

For painless deployment, you should configure several sudo commands for specified deploy user
to be executed without asking for password via `sudo visudo` command,
as described in https://capistranorb.com/documentation/getting-started/authentication-and-authorisation/#authorisation

Full list of sudo command could be obtained by running commands mentioned below with `--dry-run` option
(e. g. `bin/cap --dry-run {stage_name} deploy:setup`

1. Set up new deployment in `config/stages/{stage_name}.rb` file
1. Set up new deployment (upload configurations):

    `bin/cap {stage_name} deploy:setup`

1. Deploy new version to `{stage_name}`:

    `bin/cap {stage_name} deploy`

2. On new deployment (or when systemd templates updated), update & enable systemd services for Puma & Sidekiq:

    `bin/cap {stage_name} deploy:setup_systemd`
