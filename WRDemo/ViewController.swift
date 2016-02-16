//
//  ViewController.swift
//  WRDemo
//
//  Created by Wim Van Renterghem on 13/02/16.
//  Copyright © 2016 Wim Van Renterghem. All rights reserved.
//

import UIKit
import WRBaseClasses

class ViewController: UIViewController {

	var webView: UIWebView = UIWebView()
	var label: UILabel = UILabel()

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		let attributedString = AttributedStringBuilder()
		attributedString.append("Hello", style: Style(font: UIFont.systemFontOfSize(20), color: UIColor.orangeColor()))
		attributedString.append("World", style: Style(font: UIFont.systemFontOfSize(32), color: UIColor.grayColor()))
		attributedString.append("I", style: Style(font: UIFont.systemFontOfSize(78), color: UIColor.blackColor()))
		attributedString.append("Am", style: Style(font: UIFont.systemFontOfSize(26), color: UIColor.purpleColor()))
		attributedString.append("Wim", style: Style(font: UIFont.systemFontOfSize(19), color: UIColor.yellowColor()))
		attributedString.append("Creator", style: Style(font: UIFont.systemFontOfSize(35), color: UIColor.blueColor()))
		attributedString.append("Of", style: Style(font: UIFont.systemFontOfSize(38), color: UIColor.grayColor()))
		attributedString.append("WRBaseClasses", style: Style(font: UIFont.systemFontOfSize(28), color: UIColor.magentaColor()))

		label.translatesAutoresizingMaskIntoConstraints = false
		label.numberOfLines = 0

		webView.translatesAutoresizingMaskIntoConstraints = false

		view.addSubview(label)
		view.addSubview(webView)

		label.top.equals(view.top).active = true
		label.leading.equals(view.leading).active = true
		label.trailing.equals(view.trailing).active = true

		label.bottom.equals(webView.top).active = true
		label.height.equals(webView.height).active = true

		webView.bottom.equals(view.bottom).active = true
		webView.leading.equals(view.leading).active = true
		webView.trailing.equals(view.trailing).active = true

		webView.loadHTMLString(attributedString.html, baseURL: nil)
		label.attributedText = attributedString.attributedString
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
}
