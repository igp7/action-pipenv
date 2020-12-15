# action-pipenv
Permite usar comandos pipenv en los workflows de Github Actions.
Ejemplo:
```yml
  Install-Tests:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v2

    - name: Install dependecies
      uses: igp7/action-pipenv@v1.0.0
      with:
          command: install
    
    - name: Unit Tests
      uses: igp7/action-pipenv@v1.0.0
      with:
        command: run tests_unit
```
