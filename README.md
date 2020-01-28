# Ruby on Rails Tutorial sample application

This is the sample application for
[*Microverse Second Project
Ruby on Rails Tutorial*](https://github.com/TashfeenRao/sample_app.git/)
by [Tashfeen Rao](https://github.com/TashfeenRao/).

## License

All source code in the [Ruby on Rails Tutorial](https://www.railstutorial.org/)
is available jointly under the MIT License and the Beerware License. See
[LICENSE.md](LICENSE.md) for details.

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```