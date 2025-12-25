# MATLAB Kullanarak Temel Hesap Makinesi GUI Projesi

## Proje Hakkında Genel Bakış
Bu proje, MATLAB Image Processing Toolbox ve App Designer yetkinliklerini pekiştirmek amacıyla geliştirilmiş interaktif bir hesap makinesi uygulamasıdır. Günlük hayatta sıkça kullanılan temel aritmetik işlemleri, kullanıcı dostu bir grafik arayüzü (GUI) üzerinden gerçekleştirmeyi sağlar. Modern yazılım geliştirme prensipleri olan "Event-Based Programming" (Olay Tabanlı Programlama) mantığı ile kurgulanmıştır.

## Teknik Özellikler ve Fonksiyonlar
Uygulama, karmaşık kod yapılarını basit bir arayüz arkasında saklayarak kullanıcıya şu özellikleri sunar:
* **Dört İşlem Kapasitesi:** Toplama, çıkarma, çarpma ve bölme işlemlerini yüksek hassasiyetle gerçekleştirir.
* **Gelişmiş Arayüz Tasarımı:** MATLAB App Designer kullanılarak oluşturulan butonlar ve giriş alanları, kullanıcının hata yapma payını minimize edecek şekilde optimize edilmiştir.
* **Hata Ayıklama (Error Handling):** Özellikle matematiksel olarak tanımsız olan "sıfıra bölme" (Division by zero) gibi durumlar için özel hata kontrolleri eklenmiştir. Bu sayede uygulamanın çökmesi engellenir.
* **Sıfırlama (Clear) Fonksiyonu:** Tek bir dokunuşla tüm geçmiş verileri ve giriş ekranını temizleyerek yeni bir işleme hazır hale getirir.

## Uygulama Nasıl Çalışır?
Kullanıcı arayüzdeki sayı butonlarına bastığında, MATLAB arka planda her butona atanmış "Callback" fonksiyonlarını tetikler. Sayılar dizgi (string) olarak biriktirilir ve bir operatöre basıldığında sayısal formata (double) dönüştürülerek bellek alanına alınır. "Eşittir" butonuna basıldığı anda, seçilen matematiksel operatör devreye girer ve sonuç ekrana yansıtılır.

## Kullanılan Teknolojiler
* **MATLAB R2023b:** Ana geliştirme ortamı.
* **App Designer:** Grafik arayüz tasarımı ve buton yerleşimi için.
* **Callback Scripting:** Buton etkileşimlerini yönetmek için yazılan özel scriptler.

Bu çalışma, mühendislik hesaplamalarında görsel programlamanın önemini vurgulayan bir eğitim materyali niteliğindedir.
