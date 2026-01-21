# 🛒 E-Commerce App

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![Clean Architecture](https://img.shields.io/badge/Clean-Architecture-green?style=for-the-badge)
![BLoC](https://img.shields.io/badge/State-BLoC-blue?style=for-the-badge)
![Firebase](https://img.shields.io/badge/Firebase-%23FFCA28.svg?style=for-the-badge&logo=firebase&logoColor=black)

## 📚 Makale ve Detaylı Anlatım

Bu projenin geliştirme süreci, mimari kararları ve kullanılan teknolojiler hakkında daha detaylı bilgi edinmek isterseniz Medium üzerindeki inceleme yazıma göz atabilirsiniz:

🔗 **[Flutter, Clean Architecture ve Firebase ile Ölçeklenebilir E-Ticaret Uygulaması Geliştirme](https://medium.com/@akgullberk/flutter-clean-architecture-ve-firebase-ile-%C3%B6l%C3%A7eklenebilir-e-ticaret-uygulamas%C4%B1-geli%C5%9Ftirme-157937e90001?postPublishedType=initial)

E-Commerce App, kullanıcıların en yeni moda ürünlerini keşfedebileceği, kategorilere göre filtreleme yapabileceği, sepetlerini yönetebileceği ve sipariş verebileceği modern bir mobil uygulamadır. **Clean Architecture** prensipleri ve **BLoC/Cubit** state management kullanılarak geliştirilmiştir.

---

## 📱 Ekran Görüntüleri
<div style="display:flex; gap:12px; flex-wrap:wrap;">
  <img src="https://github.com/user-attachments/assets/a163d32b-9472-4c0a-a8e7-81e89f0db38c" width="220"/>
  <img src="https://github.com/user-attachments/assets/6fae6100-864d-4fe3-b9b2-f8c1519338fe" width="220"/>
  <img src="https://github.com/user-attachments/assets/2526a0d4-4e54-4f0c-b1ae-54391c4c750d" width="220"/>
  <img src="https://github.com/user-attachments/assets/d9633156-b644-4c5e-a320-a655ea569c7a" width="220"/>
</div>

<br/>

<div style="display:flex; gap:12px; flex-wrap:wrap;">
  <img src="https://github.com/user-attachments/assets/d1927eeb-5b74-43f0-8ef8-05a3a827f345" width="220"/>
  <img src="https://github.com/user-attachments/assets/6aa5f560-8852-40b2-b61c-47482de73879" width="220"/>
  <img src="https://github.com/user-attachments/assets/58c28560-69df-46ec-92e0-d253319c8937" width="220"/>
  <img src="https://github.com/user-attachments/assets/30682735-925a-400e-b427-e41cdb31fe1e" width="220"/>

  <br/>

<div style="display:flex; gap:12px; flex-wrap:wrap;">
  <img src="https://github.com/user-attachments/assets/6fccfcaa-8d1d-4316-9246-2755f949e355" width="220"/>
  <img src="https://github.com/user-attachments/assets/70b43419-8189-4616-84f4-632b59c2ab95" width="220"/>
  <img src="https://github.com/user-attachments/assets/ffd46717-5c9d-467f-bca6-b420b9fa776e" width="220"/>
  <img src="https://github.com/user-attachments/assets/14627a2e-ebdd-4db1-9b93-8b9e9ad5dbae" width="220"/>

   <br/>

<div style="display:flex; gap:12px; flex-wrap:wrap;">
  <img src="https://github.com/user-attachments/assets/8c5c1f73-8702-4165-b323-69b1cdc1168c" width="220"/>
  <img src="https://github.com/user-attachments/assets/2ff88ffc-0b77-4411-9f23-40838423ce84" width="220"/>
  <img src="https://github.com/user-attachments/assets/5da33130-22a6-47f4-9954-a37135721f57" width="220"/>
  <img src="https://github.com/user-attachments/assets/39512d01-7691-44b5-a9b8-901f7e3151b6" width="220"/>
  <img src="https://github.com/user-attachments/assets/8773d02e-a5b3-48f5-924d-b6f8d29a6eab" width="220"/>
</div>

## 🚀 Özellikler

- **Giriş ve Kayıt Sistemi:** Firebase Auth ile güvenli kullanıcı kimlik doğrulaması ve şifre sıfırlama.
- **Trendler ve Yeni Gelenler:** En popüler ve yeni eklenen ürünleri ana sayfada keşfedin.
- **Kategori Filtreleme:** Ürünleri kategorilerine göre kolayca filtreleyin.
- **Detaylı Ürün İnceleme:** Ürünlerin renk, beden ve miktar seçeneklerini belirleyerek detaylı inceleyin.
- **Favori Sistemi:** Beğendiğiniz ürünleri favorilerinize ekleyin ve daha sonra kolayca erişin.
- **Sepet ve Ödeme Yönetimi:** Ürünleri sepete ekleyin, miktarlarını güncelleyin ve checkout sürecini tamamlayın.
- **Sipariş Takibi:** Geçmiş siparişlerinizi ve durumlarını detaylıca görüntüleyin.
- **Modern UI/UX:** Koyu tema odaklı, göze hitap eden ve kullanıcı dostu arayüz.

---

## 🛠️ Teknik Stack

- **Framework:** [Flutter](https://flutter.dev)
- **Backend:** [Firebase](https://firebase.google.com) (Auth & Firestore)
- **State Management:** [flutter_bloc](https://pub.dev/packages/flutter_bloc) (Cubit)
- **Dependency Injection:** [get_it](https://pub.dev/packages/get_it)
- **Functional Programming:** [dartz](https://pub.dev/packages/dartz) (Either yapısı için)
- **Vector Graphics:** [flutter_svg](https://pub.dev/packages/flutter_svg)

---

## 🏗️ Mimari Yapı: Clean Architecture

Proje, sürdürülebilirlik ve test edilebilirlik için **Clean Architecture** prensiplerine göre katmanlandırılmıştır:

- **Data Katmanı:** Firebase servisleri, modeller (JSON mappers) ve repository implementasyonları.
- **Domain Katmanı:** Entity'ler, Repository arayüzleri ve Use Case'ler (İş mantığı).
- **Presentation Katmanı:** UI bileşenleri, sayfalar ve BLoC/Cubit ile state yönetimi.
- **Core:** Uygulama genelinde kullanılan konfigürasyonlar (tema, network, sabitler).

---

## 📂 Proje Dizini

```text
lib/
├── common/           # Genel widget'lar, yardımcı sınıflar ve paylaşılan bloc'lar
├── core/             # Tema, network ayarları, sabitler ve temel sınıflar
├── data/             # Veri kaynakları, modeller ve repository implementasyonları
├── domain/           # İş mantığı, entity'ler ve repository arayüzleri
├── presentation/     # UI katmanı (Sayfalar, widget'lar ve cubit'ler)
├── service_locator.dart # Bağımlılık yönetimi (Dependency Injection)
└── main.dart         # Uygulama giriş noktası
```

## 🎨 Tasarım Detayları

Uygulama, modern ve şık bir deneyim sunmak için **Koyu Tema (Dark Mode)** üzerine inşa edilmiştir.

- **Ana Renk:** `#8E6CEF` (Mor)
- **Arka Plan:** `#1D182A` (Koyu Lacivert/Siyah)
- **İkincil Arka Plan:** `#342F3F` (Koyu Gri)
