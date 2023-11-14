FROM gitpod/workspace-full

# Install Flutter dependencies
RUN sudo apt-get update && \
    sudo apt-get install -y --no-install-recommends \
    clang \
    libstdc++6 \
    libglu1-mesa

# Download and install Flutter
RUN git clone --branch stable https://github.com/flutter/flutter.git /workspace/flutter && \
    /workspace/flutter/bin/flutter --version
    