# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FROM alpine:latest

RUN apk add --no-cache \
       ca-certificates \
       git \
       git-svn \
       git-subtree \
       the_silver_searcher \
       tini \
       su-exec \
       zsh \
       ctags \
       neovim \
       neovim-doc \
       neovim-lang \
       bash \
       zsh \
       alpine-sdk \
       docker \
       python \
       python-dev \
       python3 \
       python3-dev \
       py2-pip \
    && pip3 install --upgrade neovim

ENV LANG en_US.UTF-8

COPY run.sh /run.sh

ENTRYPOINT ["/sbin/tini", "--", "/run.sh"]

