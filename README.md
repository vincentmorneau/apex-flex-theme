# APEX Bootstrap 4
[![Build Status](https://travis-ci.org/vincentmorneau/apex-bootstrap4.svg?branch=master)](https://travis-ci.org/vincentmorneau/apex-bootstrap4)
[![Dependency Status](https://david-dm.org/vincentmorneau/apex-bootstrap4.svg)](https://david-dm.org/vincentmorneau/apex-bootstrap4)

This is a Bootstrap 4 Theme for Oracle APEX 5.

[See demo](https://apex.oracle.com/pls/apex/f?p=73792)

## Project Sponsors
Thanks to [Insum Solutions](http://insum.ca/) for sponsoring this project.

## Changelog
0.1.0 Initial Release 

## Install
- **Option 1) Application Import**
    - Import the APEX application [demo-app.sql](apex/demo-app.sql) in your workspace.
- **Option 2) Theme Import**
    - Import the Theme [theme-export.sql](apex/theme-export.sql) in your existing application.
- **Option 3) Manual compile**
    - Install apex-bootstrap4  
    ```bash
    git clone https://github.com/vincentmorneau/apex-bootstrap4.git
    cd apex-bootstrap4
    npm install
    ```
    - Install APEX Front-End Boost
    ```bash
    git clone https://github.com/OraOpenSource/apex-frontend-boost.git
    cd apex-frontend-boost
    npm install
    ```
    - Add the project to APEX Front-End Boost's `config.json`  
    ```json
    {
        "bootstrap4": {
            "appURL": "https://apex.oracle.com/pls/apex/f?p=73792",
            "srcFolder": "../apex-bootstrap4/src",
            "distFolder": "../apex-bootstrap4/dist",
            "cssConcat": {
                "enabled": false
            },
            "sass": {
                "enabled": true,
                "includePath": "../apex-bootstrap4/node_modules/bootstrap/scss"
            }
        }
    }
    ```
    - Run the project  
    ```bash
    npm start -- --project=bootstrap4
    ```
