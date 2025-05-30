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
- **Task Kodu:** `HRAPP-001`
- Auto Layout & Dark Mode destekli
- Launch sonrası gösterilir
- Kullanıcı onboard ekranını görmediyse sırasıyla:
  1. Onboard
  2. Login (veya doğrudan Home)

---

### 🔹 Onboard
- **Task Kodu:** `HRAPP-002`
- Paging-enabled (yatay kaydırma)
- Görseller URL'den çekilir, yüklenemezse placeholder gösterilir
- Geri tuşu devre dışı
- "Atla" → Login ekranı
- "Devam" → Sıradaki sayfa, son sayfada → Login
- **Nice to Have:**
  - `Onboarding_Skipped` ve `Onboarding_Completed` event’leri

---

### 🔹 Login
- **Task Kodu:** `HRAPP-003`
- **Test Kullanıcı:** `username: test.case`, `password: 123123`
- Karakter sınırı: kullanıcı adı (50), şifre (20)
- Emoji girişi engellenmeli
- Giriş başarılıysa OTP ekranına geçilmeli
- **Nice to Have:**
  - Firebase login success/error event’leri
  - Input bileşenleri reusable component yapısında olmalı

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
