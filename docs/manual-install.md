# Manual Install

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
