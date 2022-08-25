# Fresh 

Fresh is a command line tool that builds and (re)starts your web application everytime you save a Go or template file.

## Installation

    # lower or equals to go1.16.x
    go get github.com/pepsi7959/fresh
    
    # go1.18.x
    go get github.com/pepsi7959/fresh@v1.2.0
    
    # go1.19.x
    go get github.com/pepsi7959/fresh@v1.3.0

## Usage

    cd /path/to/myapp

Start fresh:

    fresh

Fresh will watch for file events, and every time you create/modify/delete a file it will build and restart the application.
If `go build` returns an error, it will log it in the tmp folder.

`fresh` uses `./runner.conf` for configuration by default, but you may specify an alternative config filepath using `-c`:

    fresh -c other_runner.conf

Here is a sample config file with the default settings:

    root:              .
    tmp_path:          ./tmp
    build_name:        runner-build
    build_log:         runner-build-errors.log
    valid_ext:         .go, .tpl, .tmpl, .html
    no_rebuild_ext:    .tpl, .tmpl, .html
    ignored:           assets, tmp
    build_delay:       600
    colors:            1
    log_color_main:    cyan
    log_color_build:   yellow
    log_color_runner:  green
    log_color_watcher: magenta
    log_color_app:


## Origin Author By 

* [Andrea Franz](http://gravityblast.com)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

