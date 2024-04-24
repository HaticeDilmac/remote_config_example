# remote_config_example

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
bash
Copy code
git clone https://github.com/kullaniciAdi/projeAdi.git
```

Proje klasörüne geçin:
```
bash
Copy code
cd projeAdi
```

Gerekli bağımlılıkları yükleyin:
```
bash
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
