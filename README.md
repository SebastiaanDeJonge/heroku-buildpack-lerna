# Heroku Lerna Buildpack

Based on:
- [heroku-buildpack-lerna-storybook](https://github.com/guisers/heroku-buildpack-lerna-storybook)

This is a simplified version of the Heroku Lerna Storybook buildpack (simply stripped off anything related to 
storybook).

## Requirements
* The `package.json` inside the root of your project included `lerna` as `devDependency`
* `YARN_PRODUCTION` is set to `false` inside your Heroku config
* `APP_BASE` inside your Heroku config points to the relative path of your application

## Example
```
my-monorepo
    |-- packages
        |-- my-utilities
        |-- my-tools
    |-- services
        |-- my-app
        |-- my-api
            |-- package.json
    |-- lerna.json
    |-- package.json
```

## Configuration
### Set YARN_PRODUCTION
```
heroku config:set YARN_PRODUCTION=false -a <heroku-app-name>
```

### Set APP_BASE
```
heroku config:set APP_BASE=false -a <relative-path-to-app>
```
