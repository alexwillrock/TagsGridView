<img align=top src="https://developer.apple.com/swift/images/swift-logo.svg" width="36" height="36">   TagsGridView: A simple view for your tags.
======================================

- [Requirements](#requirements) 
- [Installation](#installation)
- [Contents](#contents)
- [License](#license)
- [Support](#support)
- [Credits](#credits)

# Requirements 

- iOS 14, macOS 10.15
- Swift 5.5
- Xcode 12.5+

# Installation

The preferred way of installing SwiftUIX is via the [Swift Package Manager](https://swift.org/package-manager/).

>Xcode 12 integrates with libSwiftPM to provide support for iOS, watchOS, macOS and tvOS platforms.

1. In Xcode, open your project and navigate to **File** → **Swift Packages** → **Add Package Dependency...**
2. Paste the repository URL (`https://github.com/alexwillrock/TagsGridView`) and click **Next**.
3. For **Rules**, select **Branch** (with branch set to `master`).
4. Click **Finish**.

# Contents

### Prepare view model

```swift
struct Tag: Hashable {
    let title: String
    let color: Color
}
```

### Draw tag view

```swift
struct TagView: View {    
    let tag: Tag
    
    var body: some View {
        Text(tag.title)
            .lineLimit(1)
            .font(.caption2)
            .padding(.all, 6)
            .background {
                RoundedRectangle(cornerRadius: 8)
                    .foregroundColor(tag.color)
            }
    }
}

```

### Implemente TagsGridView  

```swift
    var body: some View {
        HStack {
            Spacer()
            
            TagsGridView(data: tags,
                     spacing: 4,
                     alignment: .leading) { item in
                TagView(tag: item)
                    .frame(height: 25)
            }
            
            Spacer()
        }
    }
```

### Visual


![image](https://user-images.githubusercontent.com/6507402/140094758-c03e33b0-0e4e-4326-b807-15990ce866c9.png)
# License

TagsGridView is licensed under the [MIT License](https://vmanot.mit-license.org).

# Support 

[Contact me](mailto:whitewillrock@gmail.com)


# Credits

TagsGridView is a project of [@alexwillrock](https://github.com/alexwillrock).
