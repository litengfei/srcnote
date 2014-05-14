// Copyright (C) 2009 The Android Open Source Project
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package com.google.gerrit.httpd;

import com.google.gerrit.server.config.AuthConfig;
import com.google.inject.Inject;
import com.google.inject.servlet.ServletModule;

import javax.servlet.Filter;

/** Configures Git access over HTTP with authentication. */
public class GitOverHttpModule extends ServletModule {
  private final AuthConfig authConfig;

  @Inject
  GitOverHttpModule(AuthConfig authConfig) {
    this.authConfig = authConfig;
  }

  @Override
  protected void configureServlets() {
    Class<? extends Filter> authFilter;
    if (authConfig.isTrustContainerAuth()) {
      authFilter = ContainerAuthFilter.class;
    } else if (authConfig.isGitBasichAuth()) {
      authFilter = ProjectBasicAuthFilter.class;
    } else {
      authFilter = ProjectDigestFilter.class;
    }

    String git = GitOverHttpServlet.URL_REGEX;
    filterRegex(git).through(authFilter);
    serveRegex(git).with(GitOverHttpServlet.class);

    filter("/a/*").through(authFilter);
  }
}
