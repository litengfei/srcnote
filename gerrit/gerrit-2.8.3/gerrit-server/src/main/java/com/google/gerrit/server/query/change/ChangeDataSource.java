// Copyright (C) 2010 The Android Open Source Project
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

package com.google.gerrit.server.query.change;

import com.google.gwtorm.server.OrmException;
import com.google.gwtorm.server.ResultSet;

public interface ChangeDataSource {
  /** @return an estimate of the number of results from {@link #read()}. */
  public int getCardinality();

  /** @return true if all returned ChangeData.hasChange() will be true. */
  public boolean hasChange();

  /** @return read from the database and return the changes. */
  public abstract ResultSet<ChangeData> read() throws OrmException;
}
