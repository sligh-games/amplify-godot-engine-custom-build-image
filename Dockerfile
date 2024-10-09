ARG GODOT_VERSION="4.2"

FROM barichello/godot-ci:$GODOT_VERSION

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    && rm -rf /var/lib/apt/lists/*