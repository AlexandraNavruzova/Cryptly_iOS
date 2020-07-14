/// Copyright (c) 2020 Razeware LLC
/// 
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
/// 
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
/// 
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
/// 
/// This project and source code may use libraries or frameworks that are
/// released under various Open-Source licenses. Use of those libraries and
/// frameworks are governed by their own individual licenses.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import Foundation
import UIKit


protocol Theme {
  var backgroundColor: UIColor { get set }
  var textColor: UIColor { get set }
  var borderColor: UIColor { get set }
  var widgetBackgroundColor: UIColor { get set }
}

struct DarkTheme: Theme {
  var backgroundColor = UIColor(red: 26/255, green: 28/255, blue: 29/255, alpha: 1.0)
  var textColor = UIColor(red: 251/255, green: 249/255, blue: 243/255, alpha: 1.0)
  var borderColor = UIColor(red: 189/255, green: 135/255, blue: 78/255, alpha: 1.0)
  var widgetBackgroundColor = UIColor(red: 51/255, green: 66/255, blue: 71/255, alpha: 1.0)
}

struct LightTheme: Theme {
  var backgroundColor = UIColor(red: 250.0/255.0, green: 251.0/255.0, blue: 249.0/255.0, alpha: 1.0)
  var textColor = UIColor(red: 102.0/255.0, green: 88.0/255.0, blue: 83.0/255.0, alpha: 1.0)
  var borderColor = UIColor(red: 248.0/255.0, green: 69.0/255.0, blue: 73.0/255.0, alpha: 1.0)
  var widgetBackgroundColor = UIColor(red: 206.0/255.0, green: 206.0/255.0, blue: 181.0/255.0, alpha: 1.0)
}

protocol Themable {
  func registerForTheme()
  func unregisterForTheme()
  func themeChanged()
  
}