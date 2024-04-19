FROM images.home.mtaylor.io/base:latest
RUN curl -fLo /usr/local/bin/koboldcpp \
  https://github.com/LostRuins/koboldcpp/releases/latest/download/koboldcpp-linux-x64 \
  && chmod +x /usr/local/bin/koboldcpp
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
