ARG PYTHON_VERSION
FROM python:${PYTHON_VERSION:-slim-buster}

ARG POETRY_VERSION
ARG USERNAME

RUN apt-get update && apt-get upgrade -y && apt-get install curl tree -y
RUN useradd -m ${USERNAME}

COPY bashrc /home/${USERNAME}/.bashrc
RUN mkdir -p /app
RUN chown -R ${USERNAME}:${USERNAME} /app /home/${USERNAME}/.bashrc
WORKDIR /app

RUN pip install "poetry==${POETRY_VERSION}"

USER ${USERNAME}

CMD ["sleep", "3600"]
