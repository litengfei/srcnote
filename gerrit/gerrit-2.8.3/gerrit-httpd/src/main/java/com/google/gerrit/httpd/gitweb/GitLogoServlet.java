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

package com.google.gerrit.httpd.gitweb;

import com.google.gerrit.httpd.GitWebConfig;
import com.google.gwtexpui.server.CacheHeaders;
import com.google.inject.Inject;
import com.google.inject.Singleton;

import org.eclipse.jgit.util.IO;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@Singleton
class GitLogoServlet extends HttpServlet {
  private final long modified;
  private final byte[] raw;

  @Inject
  GitLogoServlet(final GitWebConfig gitWebConfig) throws IOException {
    byte[] png;
    final File src = gitWebConfig.getGitLogoPNG();
    if (src != null) {
      try {
        png = IO.readFully(src);
      } catch (FileNotFoundException e) {
        png = null;
      }
      modified = src.lastModified();
    } else {
      modified = -1;
      png = null;
    }
    raw = png;
  }

  @Override
  protected long getLastModified(final HttpServletRequest req) {
    return modified;
  }

  @Override
  protected void doGet(final HttpServletRequest req,
      final HttpServletResponse rsp) throws IOException {
    if (raw != null) {
      rsp.setContentType("image/png");
      rsp.setContentLength(raw.length);
      rsp.setDateHeader("Last-Modified", modified);
      CacheHeaders.setCacheable(req, rsp, 5, TimeUnit.MINUTES);

      final ServletOutputStream os = rsp.getOutputStream();
      try {
        os.write(raw);
      } finally {
        os.close();
      }
    } else {
      CacheHeaders.setNotCacheable(rsp);
      rsp.sendError(HttpServletResponse.SC_NOT_FOUND);
    }
  }
}
