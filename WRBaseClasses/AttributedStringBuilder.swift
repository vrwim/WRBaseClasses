//
//  AttributedStringBuilder.swift
//  WRBaseClasses
//
//  Created by Wim Van Renterghem on 09/02/16.
//  Copyright © 2016 Wim Van Renterghem. All rights reserved.
//

import Foundation

public class AttributedStringBuilder
{

	public var attributedString: NSMutableAttributedString
	public var defaultStyle: Style = Style(font: UIFont.systemFontOfSize(17), color: UIColor.blackColor())

	public init() {
		attributedString = NSMutableAttributedString()
	}

	public init(attributedString: NSAttributedString) {
		self.attributedString = NSMutableAttributedString(attributedString: attributedString)
	}
    
    /// Gets the HTML representing this attributed string.
	public var HTML: String {
        get {
            let htmlData = try! attributedString.dataFromRange(NSRange(location: 0, length: attributedString.length), documentAttributes: [NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType])
            let retString = NSString(data: htmlData, encoding: NSUTF8StringEncoding) as! String
            return retString
		}
	}

	public func append(text: String, style: Style) -> AttributedStringBuilder
	{
		let beginIndex = attributedString.length
		attributedString.appendAttributedString(NSAttributedString(string: text))
		let length = attributedString.length - beginIndex
		let range = NSRange(location: beginIndex, length: length)
		attributedString.addAttributes(style.stringAttributes, range: range)
		return self
	}

	public func append(image: UIImage) -> AttributedStringBuilder
	{
		return append(image, size: image.size)
	}

	public func append(image: UIImage, size: CGSize) -> AttributedStringBuilder
	{
		return append(image, rect: CGRect(origin: CGPoint(x: 0, y: 0), size: size))
	}

	public func append(image: UIImage, rect: CGRect) -> AttributedStringBuilder
	{
		let imageAttachment = NSTextAttachment()
		imageAttachment.image = image
		imageAttachment.bounds = rect
		return append(NSAttributedString(attachment: imageAttachment))
	}

	public func append(attrString: NSAttributedString) -> AttributedStringBuilder
	{
		attributedString.appendAttributedString(attrString)
		return self
	}

	/// This will use the `defaultStyle`
	public func append(str: String) -> AttributedStringBuilder
	{
		return append(str, style: defaultStyle)
	}
}

public struct Style {

	var font: UIFont
	var color: UIColor
	var minimumLineHeight: CGFloat
	var textAlignment: NSTextAlignment

	public var stringAttributes: [String: AnyObject] {
		get {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.minimumLineHeight = minimumLineHeight
            paragraphStyle.alignment = textAlignment
            
			let stringAttributes: [String: AnyObject] =
            [
                NSFontAttributeName:font,
                NSForegroundColorAttributeName:color,
                NSParagraphStyleAttributeName:paragraphStyle
            ]
			return stringAttributes
		}
	}

	public init(font: String, fontSize: CGFloat, foregroundColor: UIColor, minimumLineHeight: Float = -1, textAlignment: NSTextAlignment = .Left)
	{
		self.init(font: UIFont(name: font, size: fontSize)!, color: foregroundColor, minimumLineHeight: minimumLineHeight, textAlignment: textAlignment)
	}

	public init(font: UIFont, color: UIColor, minimumLineHeight: Float = -1, textAlignment: NSTextAlignment = .Left)
	{
		self.font = font
		self.color = color
		self.minimumLineHeight = CGFloat(minimumLineHeight == -1 ? Float(font.pointSize) + 3 : minimumLineHeight)
		self.textAlignment = textAlignment
	}
}