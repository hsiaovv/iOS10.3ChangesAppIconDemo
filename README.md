# iOS10.3ChangesApp-sIconDemo

iOS 10.3 更换图标

``` swift
if UIApplication.shared.supportsAlternateIcons {//判断设备是否支持更换图标
        
    UIApplication.shared.setAlternateIconName(iconName, completionHandler: { (error) in
        
        if error != nil {
             print("替换icon失败\(String(describing: error?.localizedDescription))")
        }
    })
    
}else {
    
    print("设备不支持更换图标")
}
```