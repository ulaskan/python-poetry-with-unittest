# Python poetry with unittest
This is a boilerplate for building dockerised python projects using packaging with poetry including python 
unit testing. The project is provided with simple python code and a unit test that goes with it. Please 
delete those as required and implement your own code.

To run the code we use the Makefile. The idea is to build the code using
the local directories as mount volumes to the docker container. 

Once building the code is completed it can be packaged without volumes mounted and code packaged into the
container (this part is to be implemented)

The python version and the poetry version to be used are provided in `.python_version` and
`.poetry_version` files respectively. A `.bashrc` file is provided for the container for ease. 

The code can also be locally without using the docker container if required.


## How to run the code:
In development mode running the `make` command will build the container, run it 
and give a shell and keeps the container running for a period of time.

To run the code execute the below command
  `poetry run python src/main.py`   (or use the alias: `pr src/main.py`) 


## How to run unit tests:
Running `make test` will restart the container, execute the tests and exit.

Alternatively from inside the container in the root folder of the project execute the following
command:
  `poetry run python -m unittest`   (or use the alias: `pt`)


## How to package the completed project:
to be implemented ...


### Refs:
poetry:
  https://python-poetry.org/docs/basic-usage/  
