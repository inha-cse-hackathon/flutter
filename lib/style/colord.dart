// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/painting.dart';

class Colors {
  // This class is not meant to be instantiated or extended; this constructor
  // prevents instantiation and extension.
  Colors._();

  /// This is a paragraph of regular text.
  ///
  /// This sentence has *two* _emphasized_ words (italics) and **two**
  /// __strong__ ones (bold).
  ///
  /// A blank line creates a separate paragraph. It has some `inline code`
  /// delimited using backticks.
  ///
  /// * Unordered lists.
  /// * Look like ASCII bullet lists.
  /// * You can also use `-` or `+`.
  ///
  /// 1. Numbered lists.
  /// 2. Are, well, numbered.
  /// 1. But the values don't matter.
  ///
  ///     * You can nest lists too.
  ///     * They must be indented at least 4 spaces.
  ///     * (Well, 5 including the space after `///`.)
  ///
  /// Code blocks are fenced in triple backticks:
  ///
  /// ```
  /// this.code
  ///     .will
  ///     .retain(its, formatting);
  /// ```
  ///
  /// The code language (for syntax highlighting) defaults to Dart. You can
  /// specify it by putting the name of the language after the opening backticks:
  ///
  /// ```html
  /// <h1>HTML is magical!</h1>
  /// ```
  ///
  /// Links can be:
  ///
  /// * https://www.just-a-bare-url.com
  /// * [with the URL inline](https://google.com)
  /// * [or separated out][ref link]
  ///
  /// [ref link]: https://google.com
  ///
  /// # A Header
  ///
  /// ## A subheader
  ///
  /// ### A subsubheader
  ///
  /// #### If you need this many levels of headers, you're doing it wrong
  static const Color transparent = Color(0x00000000);


  static const Color black = Color(0xFF000000);


  static const Color black38 = Color(0x61000000);


  static const Color white = Color(0xFFFFFFFF);


  static const Color white24 = Color(0x3DFFFFFF);

  static const Color white12 = Color(0x1FFFFFFF);


  static const Color white10 = Color(0x1AFFFFFF);


  static const Color red =Color(0xFFF44336);




}
