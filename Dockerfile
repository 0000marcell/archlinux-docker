FROM archlinux
WORKDIR ~/
COPY . ./docker-install
RUN bash ./docker-install/install.sh
