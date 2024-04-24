# remote_config_example

## English README
This Flutter application uses Firebase Remote Config to display a banner during a specific discount period, and removes the banner when the discount ends. This feature allows you to change visual content without releasing a new app version.

# Features
Firebase Remote Config integration
Displays a discount banner during the discount period
Real-time configuration to remove the banner when the discount ends
Horizontal list of fruits and vegetables
GridView list displaying fruit images, names, and "Add to Cart" buttons
# Setup
Install the Firebase SDK and initialize your Firebase project.

# Clone the project:
```
Copy code
git clone https://github.com/username/project-name.git
```

Navigate to the project folder:
```
Copy code
cd project-name
```
Install required dependencies:
```
Copy code
flutter pub get
```

# Firebase Remote Config Settings
Create a Remote Config parameter in Firebase console:

Key: widgetActivateKey
Type: bool
Value: true (to show during the discount), false (to hide when the discount ends)
Running the Application
To start the application:

bash
Copy code
flutter run
Contributing
To contribute, you can submit a pull request (PR). If you want to fix bugs or add new features, do so by creating a PR.

# ScreenShot


<img src="https://github.com/HaticeDilmac/remote_config_example/assets/100489350/8f0cd6bc-8787-4cb9-8b7f-7291dc8ccc96" width="200" height="400">  
<img src="https://github.com/HaticeDilmac/remote_config_example/assets/100489350/4f254ae0-32bf-4479-acee-2811ee87f8ac" width="750" height="70"> 
<img src="https://github.com/HaticeDilmac/remote_config_example/assets/100489350/9c8451ab-e2fc-4e8e-a7e4-732a5f116300" width="200" height="400">
<img src="https://github.com/HaticeDilmac/remote_config_example/assets/100489350/177fba3f-b983-4aba-913a-f73fe209df89" width="750" height="70">  

## Türkçe README
Bu Flutter uygulaması, Firebase Remote Config kullanarak belirli bir indirim zamanı için bir banner'ı görüntüler ve indirim sona erdiğinde banner'ı kaldırır. Bu özellik, uygulama sürümünü güncellemeden görsel içerikleri güncellemenize olanak tanır.

# Özellikler
Firebase Remote Config entegrasyonu
İndirim zamanı için gösterilen banner
İndirim bittiğinde banner'ı kaldırmak için gerçek zamanlı yapılandırma
Meyve ve sebzelerin yatay listesi
Meyvelerin resimlerini ve isimlerini gösteren GridView listesi
# Kurulum
Firebase SDK'sını yükleyin ve Firebase projesini başlatın.

Projeyi klonlayın:
``` 
Copy code
git clone https://github.com/kullaniciAdi/projeAdi.git
```

Proje klasörüne geçin:
``` 
Copy code
cd projeAdi
```

Gerekli bağımlılıkları yükleyin:
```
Copy code
flutter pub get
```

# Firebase Remote Config Ayarları
Firebase konsolunda bir Remote Config parametresi oluşturun:

Anahtar: widgetActivateKey
Tür: bool
Değer: true (İndirim zamanında göster), false (İndirim bittiğinde gösterme)
Çalıştırma
Projeyi başlatmak için:

bash
Copy code
flutter run
Katkı
Katkıda bulunmak için pull request (PR) gönderebilirsiniz. Hataları düzeltmek veya yeni özellikler eklemek istiyorsanız, bunu bir PR ile yapabilirsiniz.
