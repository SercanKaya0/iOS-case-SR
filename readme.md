# HR App

Modern İK ekipleri için geliştirilmiş, aday değerlendirme ve işe alım süreçlerini kolaylaştırmayı amaçlayan bir mobil uygulama.

## 👨‍💻 Geliştirici
**Rol:** Jr. iOS Developer

---

## 📘 İçindekiler

- [Giriş](#giriş)
- [Gereksinimler](#gereksinimler)
- [Nice to Have Özellikler](#nice-to-have)
- [Özellikler](#özellikler)
  - [Launch Screen](#launch-screen)
  - [Splash Screen](#splash-screen)
  - [Onboard](#onboard)
  - [Login](#login)
  - [OTP](#otp)
  - [Home](#home)
  - [Settings](#settings)

---

## 📌 Giriş

**HR App**, birden fazla markaya kolayca uyarlanabilecek esnek bir yapıda tasarlanmıştır. Amaç; yalnızca marka kimliğine uygun tasarımlar giydirilerek, minimum geliştirme ile farklı pazarlarda kullanılabilecek bir İnsan Kaynakları uygulaması sunmaktır.

---

## ⚙️ Gereksinimler

- **Mimari:** MVVM-R
- **Branch Yapısı:**
  - `feature/hrapp-000-feature-name`
  - `bug/hrapp-000-fix-description`
  - **Commit Örneği:** `HRAPP-101 Login ekranı tasarlandı.`
- **Geliştirme:** Mevcut proje üzerinden devam edilecektir.
- **Swift Package Manager (SPM)**
- **Minimum iOS Sürümü:** iOS 15+
- **Dil Desteği:** Türkçe & İngilizce (JSON tabanlı lokalizasyon)
- **Karanlık Mod (Dark Mode)** desteği
- **Layout:** Auto Layout ile responsive tasarım
- **Geliştirme Yöntemi:** Programmatic veya XIB

---

## ✨ Nice to Have

- Lottie animasyonları
- Firebase Remote Config hazırlığı
- Dev / Preprod / Prod şema yapısı
- Firebase Cloud Messaging desteği
- Firebase Analytics event'leri
- Firebase Crashlytic Entegrasyonu
- SwiftLint Kurulumu
- Deeplink Entegrasyonu - (Scheme: loodosCase)

---

## 🚀 Özellikler

### 🔹 Launch Screen
- [Figma Linki](https://www.figma.com/design/MbORukxK22gzWuvYmP41Vv/Supa-Resume---Light---Dark--FREE-Resume-Cover-Letter---Community-?node-id=33-5366)
- **Task Kodu:** `HRAPP-000`
- Auto Layout uyumlu
- Dark Mode desteği
- Uygulama bu ekranla başlamalı

---

### 🔹 Splash Screen
- [Figma Linki](https://www.figma.com/design/MbORukxK22gzWuvYmP41Vv/Supa-Resume---Light---Dark--FREE-Resume-Cover-Letter---Community-?node-id=33-5366)
- **Task Kodu:** `HRAPP-001`
- Auto Layout ile tüm cihaz boyutlarına uyumlu tasarım
- Dark Mode desteği
- Launch sonrası gösterilir
- Genel Akış;
    - Uygulama Launch Screen sonrasında SplashViewController üzerinden başlar.
    - Uygulama, https://cdn.dev.enliq/tr-TR adresine bir istek göndererek bir JSON dosyası çeker.
    - Bu JSON dosyasındaki key–value verileri, lokalizasyon amaçlı kullanılacaktır.
    - Çekilen JSON dosyası cihazın yerel deposunda (örneğin UserDefaults veya dosya sistemi) saklanmalıdır.
    - Yönlendirme Kuralları:
        - Eğer kullanıcı onboard ekranlarını daha önce görmemişse, uygulama Onboard ekranına yönlendirilmelidir.
        - Kullanıcı giriş yaptıysa, doğrudan Anasayfa (Home) ekranına yönlendirilmelidir.
        - Kullanıcı giriş yapmadıysa, Login ekranına yönlendirilmelidir.
        - Başlangıç Noktası:
        - Geliştirmeye SplashViewController dosyasından başlanmalıdır.
        - Uygulama açıldığında kullanıcının dil dosyasını çekebilmesi için dikkat edilmesi gerekenler;
            - Uygulama yüklendiğinde eğer cihaz dili türkçe değilse en-US, eğer türkçe ise tr-TR olarak localizable dosyası çekilmelidir.
---

### 🔹 Onboard
- [Figma Linki](https://www.figma.com/design/MbORukxK22gzWuvYmP41Vv/Supa-Resume---Light---Dark--FREE-Resume-Cover-Letter---Community-?node-id=33-5366)
- **Task Kodu:** `HRAPP-002`
- Auto Layout ile tüm cihaz boyutlarına uyumlu tasarım
- Dark Mode desteği
- Genel Akış;
    - Uygulama, `https://cdn.dev.enliq/tr-TR` adresine bir istek göndererek bir JSON dosyası çeker.
    - Bu JSON dosyasındaki veriler, Onboard ekranında kullanılacaktır.
    - JSON verisi, Splash ekranında çekilmeli ve Onboard ekranına aktarılmalıdır.
    - Resimler yüklenirken iOS native loading mekanizması kullanılmalıdır.
    - Görseller yüklenirken hata alınırsa, tasarımdaki placeholder görsel gösterilmelidir.
    - Resimler cache'lenmelidir; böylece kullanıcı Onboard ekranını tekrar gördüğünde yeniden indirilmelerine gerek kalmaz.
    - Kullanıcı Onboard ekranında geri butonunu kullanarak çıkış yapamamalıdır.
    - Kullanıcı "Devam Et" butonuna bastığında, bir sonraki Onboard sayfası gösterilmelidir.
    - Kullanıcı "Atla" (Skip) butonuna basarsa, doğrudan Login ekranına yönlendirilmelidir.
    - Kullanıcı son Onboard ekranındaysa ve "Devam Et" butonuna basarsa, Login ekranına yönlendirme yapılmalıdır.
- **Nice to Have:**
  - Firebase Event Yollama (onboard_skipped, onboard_continue)

---

### 🔹 Login
- [Figma Linki](https://www.figma.com/design/MbORukxK22gzWuvYmP41Vv/Supa-Resume---Light---Dark--FREE-Resume-Cover-Letter---Community-?node-id=33-5366)
- **Task Kodu:** `HRAPP-003`
- **Test Kullanıcı Bilgileri:**  
  `username: test.case`, `password: 123123`
- **CURL Örneği:**
  ```bash
  curl -X POST https://api.dev.hrapp.com/login \
    -H "Content-Type: application/json" \
    -d '{
      "username": "test.case",
      "password": "123123"
    }'
  ```
- Tüm cihaz boyutlarına uyumlu Auto Layout tasarımı
- Dark Mode desteği

- **Genel Akış:**
  - Kullanıcı adı alanı minimum 3, maksimum 50 karakter olmalıdır.
  - Şifre alanı minimum 6, maksimum 20 karakter olmalıdır.
  - Tüm giriş alanlarında emoji kullanımı engellenmelidir.
  - Herhangi bir giriş alanında doğrulama hatası mevcutsa, "Giriş Yap" butonu pasif durumda olmalıdır.
  - Hatalı alanların altında kullanıcıya durumu açıklayan bilgilendirici metin gösterilmelidir.  
    Örnek: `Kullanıcı adı en az 3 karakter olmalıdır.`
  - Giriş başarılı olduğunda kullanıcı OTP ekranına yönlendirilmelidir.
  - Login isteğinden dönen response verileri OTP ekranına aktarılmalıdır.
    - Bu veri aktarımı ve yönlendirme işlemi için örnek bir kod parçası sağlanacaktır.

- **Nice to Have:**
  - Firebase üzerinden login başarılı/başarısız event'lerinin gönderilmesi
  - Giriş alanlarının yeniden kullanılabilir (reusable) component yapısında tasarlanması

---

### 🔹 OTP
- **Task Kodu:** `HRAPP-004`
- Kod girişi otomatik doldurulabilir olmalı
- Progress bar: ViewModel’den gelen süre kadar geri sayım yapmalı
- Kod: `12345` → başarılı, diğerleri → tooltip hata
- Uygulama arka planda olsa bile süre devam etmeli
- Süre bitince input temizlenmeli
- Giriş başarılıysa ana sayfaya yönlendirilmeli
- **Nice to Have:**
  - Firebase login success/error event’leri
  - Input bileşenleri reusable component yapısında olmalı

---

### 🔹 Home
- **Task Kodu:** `HRAPP-005`
- Dinamik section yapısı
- Her bir section, servisten gelen tipe uygun component ile gösterilmeli
- Banner: horizontal scroll, 5 saniyede bir geçiş + döngü
- Tabbar görünmeli
- Splash esnasında home verileri hazırlanmalı
- **Nice to Have:**
  - Banner tıklamalarında Firebase event (ör: `banner_click`)

---

### 🔹 Settings
- **Task Kodu:** `HRAPP-006`
- Dil değişikliği: Cihaz dili Türkçe değilse varsayılan İngilizce
- Dil seçimi sheet ile yapılmalı
- Uygulama dili anlık olarak değiştirilmeli
- Tabbar üzerinden erişilebilir olmalı
- Çıkış → Login ekranına yönlendirme
- **Nice to Have:**
  - Firebase logout event’i

---

## 📎 Ek Bilgi

- Tüm ekranlar Auto Layout ile responsive olmalıdır.
- Tüm özelliklerde Dark Mode desteği zorunludur.
- Lokalizasyon tüm metinlerde dikkate alınmalıdır.
- Firebase Analytics ve event tetiklemeleri opsiyonel ama tercih edilir.

---

> Bu proje, minimum geliştirme ile farklı marka ihtiyaçlarına uyum sağlamayı hedefleyen, ölçeklenebilir ve modüler bir yapı üzerine kurulmuştur.
